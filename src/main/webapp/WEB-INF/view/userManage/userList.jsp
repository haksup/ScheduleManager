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
	var app = angular.module('userListApp', ['ngDialog']);
	app.config(['ngDialogProvider', function (ngDialogProvider) {
		ngDialogProvider.setDefaults({
			className: 'ngdialog-theme-default',
			plain: false,
			showClose: true,
			closeByDocument: true,
			closeByEscape: true,
			appendTo: false,
			preCloseCallback: function () {
				console.log('default pre-close callback');
			}
		});
	}]);

	app.controller('userListCtrl', ['$scope', 'ngDialog', function($scope, ngDialog){
		$scope.showPopup = function(){
			ngDialog.open({
				template: 'userForm'
			});
		};
	}]);
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
                	<button type="button" class="btn btn-primary" ng-click="showPopup()">신규</button>
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
                                <tr class="odd gradeX">
                                    <td>Trident</td>
                                    <td>Internet Explorer 4.0</td>
                                    <td>Win 95+</td>
                                    <td class="center">4</td>
                                </tr>
                                <tr class="even gradeC">
                                    <td>Trident</td>
                                    <td>Internet Explorer 5.0</td>
                                    <td>Win 95+</td>
                                    <td class="center">5</td>
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
	                            <td><input class="form-control"></td>
	                        </tr>
	                        <tr>
	                            <td>비밀번호</td>
	                            <td><input class="form-control"></td>
	                        </tr>
	                        <tr>
	                            <td>비밀번호 확인</td>
	                            <td><input class="form-control"></td>
	                        </tr>
	                        <tr>
	                            <td>성명</td>
	                            <td><input class="form-control"></td>
	                        </tr>
	                        <tr>
	                            <td>연락처</td>
	                            <td>
	                               	<div class="form-group input-group col-lg-8">
	                               		<input type="text" class="form-control" />
                                        <span class="input-group-addon">-</span>
                                        <input type="text" class="form-control" />
                                        <span class="input-group-addon">-</span>
                                        <input type="text" class="form-control" />
                                    </div>
	                            </td>
	                        </tr>
	                        <tr>
	                            <td>이메일</td>
	                            <td>
	                              	<div class="form-group input-group">
	                              		<input type="text" class="form-control" />
                                        <span class="input-group-addon">@</span>
                                        <input type="text" class="form-control" />
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
              	<button type="button" class="btn btn-primary">저장</button>
               	<button type="button" class="btn btn-primary">취소</button>
            </div>
        </div>
	</div>
</script>
	
</body>
</html>