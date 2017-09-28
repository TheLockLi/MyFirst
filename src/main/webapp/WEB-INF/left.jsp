<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
  	<style type="text/css">
  		* {
    	margin: 0;
    	padding: 0;
		}
  		body{
  			background:#8BC34A;
  			text-align: center;
  			font-size: 30px;
  			font-family:"微软雅黑";
  			
  		}
  		a{
  			text-decoration: none;
			color:#2F2626;
		
  		}
		.span{
			margin-top: 15px;
    		display: inherit;
    		
		}
  	</style>
  </head>
  <body>
  	<span class="span">
		<a target="_right" href="/toUpdateTeacherInfo.action">个人信息</a><br>
	</span>
	<span class="span">
		<a target="_right" href="/taskList.action">课题列表</a><br>
	</span>
  	<span class="span">
		<a target="_right" href="/applyTasks.action">课题申报</a><br>
	</span>
	<span  class="span">
		<a target="_right" href="/firstChose.action">第一轮<br>选择学生</a><br>
	</span>
	<span  class="span">
		<a target="_right" href="/secondChose.action">第二轮<br>选择学生</a><br>
	</span>
	
	
  </body>
</html>