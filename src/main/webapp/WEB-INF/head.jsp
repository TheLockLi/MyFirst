<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>head.html</title>
	
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
   
    <style type="text/css">
    	
    	* {
    	margin: 0px;
    	padding-bottom: 5px;
		}
    	#d1{
		width:100%;
		background-color: #8BC34A;
		}
		#logo{
			width:48px;
			height:48px;
			vertical-align:middle;
			margin-left:20px;
			margin-top: 7px;
		}
		#title{
			width:350px;
			height:100px;	
			vertical-align:middle;		
			font-size:43px;
			color:#2F2626;
			font-family:"微软雅黑";
		}
		#hy{
			height:38px;	
			vertical-align:middle;		
			font-size:25px;
			color:#2F2626;
			float:right;
			margin-right:30px;
			margin-top:6px;
			font-family:"微软雅黑";
		}

		#logout{
			height:38px;	
			vertical-align:middle;		
			font-size:20px;
			color:#2F2626;
			float:right;
			margin-right:30px;
			margin-top:9px;
			font-family:"微软雅黑";
		}
			
		
    </style>

  </head>
  
  <body>
    <div id="d1">
    	<div id="Title">
    		<img id="logo" src="img/head/logo.png">
			<span id="title">毕业设计管理系统</span>
			<a id="logout" href="/logout.action">注销</a>
			<span id="hy">欢迎  ${sessionScope.teacherInfo.tName}老师使用</span>
			
    	</div>
    	<ul>
    		
    	</ul>
    </div>
  </body>
</html>
