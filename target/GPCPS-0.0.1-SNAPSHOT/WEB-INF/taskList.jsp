<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
  <head>
    <title>课题列表</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
 
    <script type="text/javascript" src="../js/datepicker/WdatePicker.js"></script>
    <style type="text/css">
	    table{
		    	border:#333 1px solid;
		    	border-collapse:collapse;
		    	width: 90%;
		    	text-align: center;
		    	margin: 0px auto;
	    	}
	    	tr{
	    		height: 90px;
	    	}
	    	h1{
	    		text-align: center;
	    	}
    </style>
  </head>
  
  <body>
 	 <h1>所有课题</h1>
 	 <table>
 	 	<tr>
 	 		<th>课题编号</th>
 	 		<th>课题名称</th>
 	 		<th>课题类别</th>
 	 		<th>课题性质</th>
 	 		<th>指导教师</th>
 	 		<th>辅导教师</th>
 	 		<th>通过状态</th>
 	 		<th>是否删除</th>
 	 	</tr>
 	 	<c:forEach items="${applyTasks}" var="a">
 	 		<tr>
 	 			<td>${a.id }</td>
 	 			<td>${a.ktmc }</td>
 	 			<td>${a.ktlb }</td>
 	 			<td>${a.ktxz }</td>
 	 			<td>${a.zdjs }</td>
	 			<td>${a.fdjs }</td>
	 			<td>
	 				<c:if test="${a.pass==0}">未通过</c:if>
	 				<c:if test="${a.pass==1}">已通过</c:if>
	 			</td>
	 			<td>
	 				<a href="${pageContext.request.contextPath }/deleteApplyTask.action?id=${a.id }">删除</a>
	 			</td>
 	 		</tr>
 	 	</c:forEach>
 	 </table>
  </body>
</html>

