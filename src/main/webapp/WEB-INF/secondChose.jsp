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
	<h1>第二轮选择学生</h1>
  	<div id="task">
	  	<c:forEach items="${qsInfoList}" var="q">
	  	<form action="/ChoseStudent.action" method="post">
	  		<input type="hidden" name="xtbh" value="${q.xtbh }">
	  		课题名称:<span >${q.ktmc}</span><br/><br/>
	  		<c:forEach items="${q.studentCollects}" var="c">
	  		<span>${c.sName }</span>
	  		<input type="radio" name="sNo" value="${c.sNo}">&nbsp;&nbsp;
		  	</c:forEach>
	  		<br/><br/>
	  		<input type="submit" value="提交" />
	  	</form>
	  	</c:forEach>
	  		
  	</div>
  </body>
</html>

