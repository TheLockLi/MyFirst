<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html>
  <head>
    <title>第一轮选择</title>
	
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <style type="text/css">
	h1{
		text-align: center;
	}
    #task{
    		margin: 0 auto;
    		padding: 30px 20px;
    		width: 1000px;
    		border: 1px solid #ccc;
    	}
    input[type="submit"]{
	    float: right;
    }
    </style>

  </head>
  
  <body>
	<h1>第一轮选择学生</h1>
  	<div id="task">
	  	<c:forEach items="${applyTasks}" var="a">
	  	<form action="#" method="post">
	  		课题名称:<span >${a.ktmc}</span><br/><br/>
	  		<c:forEach items="${a.studentList}" var="s">
	  		<span>${s.name }</span>
	  		<input type="radio" name="student.studentId" value="${s.studentId}">&nbsp;&nbsp;
		  	</c:forEach>
	  		<br/><br/>
	  		<input type="submit" value="提交" />
	  	</form>
	  	</c:forEach>
	  		
  	</div>
  </body>
</html>

