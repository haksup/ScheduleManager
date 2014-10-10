<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/ng-template" id="userForm">
	<div>
		<div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">사용자 정보</h1>
            </div>
        </div>
            
		<div class="row">
            <div class="col-lg-6">
              	<div class="table-responsive">
	               	<table class="table table-bordered table-striped">
						<colgroup>
                        		<col style="width:40%;">
                        		<col style="width:60%;">
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
	                               	<div class="form-group input-group col-lg-6">
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
            <div class="col-lg-6 text-center">
              	<button type="button" class="btn btn-primary">저장</button>
               	<button type="button" class="btn btn-primary">취소</button>
            </div>
        </div>
	</div>
</script>