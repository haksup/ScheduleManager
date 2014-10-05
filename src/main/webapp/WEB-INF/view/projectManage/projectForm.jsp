<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- js, css include(S)-->
<%@ include file="/WEB-INF/view/include/header.jsp"%>
<!-- js, css include(E)-->

<title>Insert title here</title>
</head>
<body>
	<div id="wrapper">
		<!--  네비게이션(S) -->
		<%@ include file="/WEB-INF/view/include/navigation.jsp"%>
		<!--  네비게이션(E) -->
		
		<!-- content(S) -->
		<div id="page-wrapper">
			<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">프로젝트 정보</h1>
                </div>
            </div>
            
			<div class="row">
                <div class="col-lg-6">
                	<div class="table-responsive">
	                	<table class="table table-bordered table-striped">
	                        <tbody>
	                            <tr>
	                                <td>프로젝트명</td>
	                                <td><input class="form-control"></td>
	                            </tr>
	                            <tr>
	                                <td>시작일자</td>
	                                <td><input class="form-control"></td>
	                            </tr>
	                            <tr>
	                                <td>종료일자</td>
	                                <td><input class="form-control"></td>
	                            </tr>
	                            <tr>
	                                <td>대상업체명</td>
	                                <td><input class="form-control"></td>
	                            </tr>
	                            <tr>
	                                <td>대상인원</td>
	                                <td>
	                                	jQuery tree 이용 개발
	                                </td>
	                            </tr>
	                        </tbody>
                        </table>
                	</div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 text-center">
                	<button type="button" class="btn btn-primary">저장</button>
                	<button type="button" class="btn btn-primary">취소</button>
                </div>
            </div>
		</div>
		<!-- content(E) -->
	</div>
</body>
</html>