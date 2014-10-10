<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <a class="navbar-brand" href="index.html">ScheduleManager v1.0</a>
    </div>

    <ul class="nav navbar-top-links navbar-right">
        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
    </ul>

    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li><a class="active" href="userList"> 사용자관리</a></li>
                <li><a href="projectList"> 프로젝트관리</a></li>
                <li><a href="authorityProjectList"> 권한관리</a></li>
                <li><a href="scheduleProjectList"> 일정관리</a></li>
            </ul>
        </div>
    </div>
</nav>