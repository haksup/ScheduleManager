<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="userListApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자 관리</title>

<!-- js, css include(S)-->
<%@ include file="/WEB-INF/view/include/header.jsp"%>
<!-- js, css include(E)-->

<!-- controller(S) -->
<script type="text/javascript">
	// Application(S)
	var app = angular.module('userListApp', ['ngDialog', 'userListApp.controller', 'userListApp.service']);
	app.config(['ngDialogProvider', function (ngDialogProvider) {
		ngDialogProvider.setDefaults({
			className: 'ngdialog-theme-default',
			plain: false,
			showClose: true,
			closeByDocument: true,
			closeByEscape: true,
			appendTo: false
// 			preCloseCallback: function () {
// 				console.log('default pre-close callback');
// 			}
		});
	}]);
	
	// Application(E)
	
	// Controller(S)
	var ctrl = angular.module('userListApp.controller', ['ngDialog', 'userListApp.service']);
	ctrl.controller('userListCtrl', ['$scope', 'ngDialog', 'userQuery', 'userCreate', 'userShow', 'userUpdate', 'userDelete'
	                                 , function($scope, ngDialog, userQuery, userCreate, userShow, userUpdate, userDelete){
		$scope.userList = userQuery.query();
		console.dir($scope.userList);
		// 사용자 신규 팝업
		$scope.newUserFormPopup = function(){
			ngDialog.open({
				template: 'userForm',
				controller: 'userListCtrl'
			});
		};
		
		// 사용자 팝업 저장
		$scope.userCreate = function(){
			userCreate.create(
				$.param($scope.user),
				function success(value){
					alert("저장되었습니다.");
					ngDialog.close();
					$scope.userList = userQuery.query();
					$scope.userList.push($scope.userList);
					console.dir($scope.userList);
				},
				function error(error){
					console.log("error");
				}
			);
		};
		
		// 사용자 list 선택
		$scope.selectUser = function(){
			$scope.userFormRetrievePopup(this.user.usrId);
		};
		
		// 사용자 정보 팝업
		$scope.userFormRetrievePopup = function(usrId){
			$scope.user = userShow.show(
					{usrId : usrId} ,
					function success(value){
						console.log("success");
					},
					function error(error){
						console.log("error");
					}
			);
			
			ngDialog.open({
				template : 'userFormRetrieve',
				scope : $scope
			});
		};
		
		// 사용자 수정 팝업
		$scope.userUpdatePopup = function(){
			$scope.user = userShow.show({usrId : $scope.user.usrId});

			ngDialog.close();
			ngDialog.open({
				template : 'userForm',
				scope : $scope
			});
		};
		
		// 사용자 정보 수정
		$scope.userUpdate = function(){
			$scope.updateInfo = {};
			$scope.updateInfo.usrId = $scope.user.usrId;
			$scope.updateInfo.password = $scope.user.password;
			$scope.updateInfo.usrNm = $scope.user.usrNm;
			$scope.updateInfo.phone1_1 = $scope.user.phone1_1;
			$scope.updateInfo.phone1_2 = $scope.user.phone1_2;
			$scope.updateInfo.phone1_3 = $scope.user.phone1_3;
			$scope.updateInfo.email = $scope.user.email;
			
			userUpdate.update($.param($scope.updateInfo));
		};
		
		// 사용자 정보 삭제
		$scope.userDelete = function(){
			userDelete.remove({usrId : $scope.user.usrId});
		}
		
	}]);
	// Controller(E)
	
	// Service(S)
	var service = angular.module('userListApp.service', ['ngResource']);
	
	// 사용자 리스트
	service.factory('userQuery', function($resource){ 
 		return $resource('/userManage/user/query',{},{ 
 			query : {method:'GET', isArray:true} 
 		})
 	}); 

	// 사용자 저장
	service.factory('userCreate', function($resource){
		return $resource('/userManage/user/create',{},{
			create	: {method:'POST', headers: {'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}}
		})
	});
	// http버전
// 	service.factory('userCreate', ['$http', function($http){
// 		return{
// 			create : function(usersData){
// 				$http({
// 					method: 'POST',
// 				    url: '/userManage/user/create',
// 				    data : $.param(usersData),
// 				    headers: {'Content-Type': 'application/x-www-form-urlencoded'}
// 				});
// 			}
// 		};
// 	}]);
	
	// 사용자 정보
	service.factory('userShow', function($resource){ 
 		return $resource('/userManage/user/show/:usrId',{},{ 
 			show : {
 				method:'GET', 
 				transformResponse: function(data, headers){
                	return angular.fromJson(data);
            	}
 			}
 		})
 	});
	
	// 사용자 수정
	service.factory('userUpdate', function($resource){ 
 		return $resource('/userManage/user/update',{},{ 
 			update : {method:'POST', headers: {'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}} 
 		})
 	});
	
	// 사용자 삭제
	service.factory('userDelete', function($resource){
		return $resource('/userManage/user/delete/:usrId',{},{ 
 			remove : {method:'DELETE'} 
 		})
	});

	// Service(E)

</script>
<!-- controller(E) -->
</head>
<body ng-controller="userListCtrl">
	<div id="wrapper">
		<!--  네비게이션(S) -->
		<%@ include file="/WEB-INF/view/include/navigation.jsp"%>
		<!--  네비게이션(E) -->
		
		<!-- content(S) -->
		<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">사용자 관리</h1>
                </div>
            </div>
			<div class="row">
                <div class="col-lg-12 text-right">
                	<button type="button" class="btn btn-primary" ng-click="newUserFormPopup()">신규</button>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                                <tr>
                                    <th>아이디</th>
                                    <th>성명</th>
                                    <th>연락처</th>
                                    <th>이메일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="odd gradeX" ng-repeat="user in userList" ng-click="selectUser()">
                                    <td>{{user.usrId}}</td>
                                    <td>{{user.usrNm}}</td>
                                    <td>{{user.phone1_1}} - {{user.phone1_2}} - {{user.phone1_3}}</td>
                                    <td>{{user.email}}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
		<!-- content(E) -->
	</div>
	
	<script type="text/ng-template" id="userForm">
	<div>
		<div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">사용자 정보</h1>
            </div>
        </div>
            
		<div class="row">
            <div class="col-lg-12">
              	<div class="table-responsive">
	               	<table class="table table-bordered table-striped">
						<colgroup>
                        		<col style="width:20%;">
                        		<col style="width:80%;">
                        </colgroup>
	                    <tbody>
	                        <tr>
	                            <td>아이디</td>
	                            <td>
									<span ng-show="user.wrtr == undefined">
              							<input class="form-control" ng-model="user.usrId">
									</span>
									<span ng-show="user.wrtr != undefined">
										{{user.usrId}}
									</span>
								</td>
	                        </tr>
	                        <tr>
	                            <td>비밀번호</td>
	                            <td><input class="form-control" ng-model="user.password"></td>
	                        </tr>
	                        <tr>
	                            <td>비밀번호 확인</td>
	                            <td><input class="form-control"></td>
	                        </tr>
	                        <tr>
	                            <td>성명</td>
	                            <td><input class="form-control" ng-model="user.usrNm"></td>
	                        </tr>
	                        <tr>
	                            <td>연락처</td>
	                            <td>
	                               	<div class="form-group input-group col-lg-8">
	                               		<input type="text" class="form-control" ng-model="user.phone1_1" />
                                        <span class="input-group-addon">-</span>
                                        <input type="text" class="form-control" ng-model="user.phone1_2" />
                                        <span class="input-group-addon">-</span>
                                        <input type="text" class="form-control" ng-model="user.phone1_3" />
                                    </div>
	                            </td>
	                        </tr>
	                        <tr>
	                            <td>이메일</td>
	                            <td>
	                              	<div class="form-group input-group">
	                              		<input type="text" class="form-control" ng-model="user.email" />
                                    </div>
								</td>
	                        </tr>
	                    </tbody>
                    </table>
               	</div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 text-center">
				<span ng-if="user.wrtr == undefined">
              		<button id="btnSave" type="button" class="btn btn-primary" ng-click="userCreate()">저장</button>
				</span>
				<span ng-if="user.wrtr != undefined">
					<button id="btnSave" type="button" class="btn btn-primary" ng-click="userUpdate()">저장</button>
				</span>
               	<button type="button" class="btn btn-primary" ng-click="closeThisDialog()">취소</button>
            </div>
        </div>
	</div>
	</script>
	
	<script type="text/ng-template" id="userFormRetrieve">
	<div>
		<div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">사용자 정보</h1>
            </div>
        </div>
            
		<div class="row">
            <div class="col-lg-12">
              	<div class="table-responsive">
	               	<table class="table table-bordered table-striped">
						<colgroup>
                        		<col style="width:20%;">
                        		<col style="width:80%;">
                        </colgroup>
	                    <tbody>
	                        <tr>
	                            <td>아이디</td>
	                            <td>{{user.usrId}}</td>
	                        </tr>
	                        <tr>
	                            <td>성명</td>
	                            <td>{{user.usrNm}}</td>
	                        </tr>
	                        <tr>
	                            <td>연락처</td>
	                            <td>
	                               	<div class="form-group input-group col-lg-8">
										{{user.phone1_1}} - {{user.phone1_2}} - {{user.phone1_3}} 
                                    </div>
	                            </td>
	                        </tr>
	                        <tr>
	                            <td>이메일</td>
	                            <td>
	                              	<div class="form-group input-group">
										{{user.email}}
                                    </div>
								</td>
	                        </tr>
	                    </tbody>
                    </table>
               	</div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 text-center">
              	<button id="btnSave" type="button" class="btn btn-primary" ng-click="userUpdatePopup()">수정</button>
              	<button id="btnSave" type="button" class="btn btn-primary" ng-click="userDelete()">삭제</button>
               	<button type="button" class="btn btn-primary" ng-click="closeThisDialog()">취소</button>
            </div>
        </div>
	</div>
	</script>
	
</body>
</html>