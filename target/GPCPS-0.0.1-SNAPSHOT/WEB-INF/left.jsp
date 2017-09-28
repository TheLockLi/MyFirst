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
  			background:#CA141D ;
  			text-align: center;
  			font-size: 30px;
  		}
  		a{
  			text-decoration: none;
			color:white;
		
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
		<a target="_right" href="/applyTasks.action">课题申报</a><br>
	</span>
  	<span class="span">
		<a target="_right" href="/taskList.action">课题申报列表</a><br>
	</span>
	<span  class="span">
		<a target="_right" href="/firstChose.action">第一轮选择学生</a><br>
	</span>
	<span  class="span">
		<a target="_right" href="/secondChose.action">第二轮选择学生</a><br>
	</span>
	<span  class="span">
		<a target="_right" href="taskBook.html">申报任务书</a><br>
	</span >
	<span  class="span">
		<a target="_right" href="openingReport.html">开题报告</a><br>
	</span >
	<span class="span">
		<a target="_right" href="#">中期检测</a><br>
	</span>
  </body>
</html>