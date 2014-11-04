<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="projectListApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- js, css include(S)-->
<%@ include file="/WEB-INF/view/include/header.jsp"%>
<!-- js, css include(E)-->

<script type="text/javascript">
	var app = angular.module('projectListApp', []);
	app.controller('projectListCtrl', ['$scope', '$http', function($scope, $http){
		
		$scope.showList = function(){
			var promise = $http.get('../userManage/user/query');
			promise.success(function(data){
				$scope.userList = data;
	        	console.log(data);
			});
		}
		
	}]);
</script>

<title>Insert title here</title>
</head>
<body ng-controller="projectListCtrl">
	<div id="wrapper">
		<!--  네비게이션(S) -->
		<%@ include file="/WEB-INF/view/include/navigation.jsp"%>
		<!--  네비게이션(E) -->
		
		<!-- content(S) -->
		<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">프로젝트 관리</h1>
                </div>
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12 text-right">
                	<button type="button" class="btn btn-primary" ng-click="showList()">데이터</button>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        	<colgroup>
                        		<col style="width:25%;">
                        		<col style="width:25%;">
                        		<col style="width:25%;">
                        		<col style="width:25%;">
                        	</colgroup>
                            <thead>
                                <tr>
                                    <th>프로젝트명</th>
                                    <th>시작일자</th>
                                    <th>종료일자</th>
                                    <th>대상업체명</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="odd gradeX" ng-repeat="user in userList">
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
</body>
</html>