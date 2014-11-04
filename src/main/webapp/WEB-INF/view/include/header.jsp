<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
function getContextPath(){
    var offset=location.href.indexOf(location.host)+location.host.length;
    var ctxPath=location.href.substring(offset,location.href.indexOf('/',offset+1));
    return ctxPath;
}
</script>

<!-- jQuery(S) -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery-1.11.1.js"></script>
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery.form.js"></script> --%>
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery.json-2.4.js"></script> --%>
<!-- jQuery(E) -->

<!-- bootstrap(S) -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap/bootstrap.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap/plugins/metisMenu/metisMenu.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap/plugins/datatables/jquery.dataTables.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap/plugins/datatables/dataTables.bootstrap.js"></script>
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap/plugins/morris/raphael.min.js"></script> --%>
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap/plugins/morris/morris.js"></script> --%>
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap/plugins/morris/morris-data.js"></script> --%>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap/sb-admin-2.js"></script>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap/sb-admin-2.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap/plugins/metisMenu/metisMenu.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap/plugins/morris.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap/plugins/timeline.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap/plugins/dataTables.bootstrap.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap/plugins/social-buttons.css" />
<!-- bootstrap(E) -->

<!-- anqularJS(S) -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/angular/angular.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/angular/angular-resource.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/angular/angular-route.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/angular/ngDialog.js"></script>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/angular/ngDialog.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/angular/ngDialog-theme-default.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/angular/ngDialog-theme-plain.css" />
<!-- anqularJS(E) -->
