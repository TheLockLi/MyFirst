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
    input[type="button"]{
	    float: right;
    }
    </style>
	<script type="text/javascript">
		 window.onload=function(){
		}
		function save(xtbh) {
			alert(xtbh);
			var obj = document.getElementsByName("sNo");
			var val;
			for(var i=0; i<obj.length; i ++){
		        if(obj[i].checked){
		            val=obj[i].value;
		        }
		    }
			document.getElementById("from").action="saveStudent.action?sNo="+val+"/"+xtbh;
			document.forms.from.submit();
		} 
		
	</script>
  </head>
  
  <body>
	<h1>第一轮选择学生</h1>
  	<div id="task">
	  	<c:forEach items="${qsInfoList}" var="q">
	  	<form id="from" action="/ChoseStudent.action" method="post">
	  		<input type="hidden" name="xtbh" value="${q.xtbh }">
	  		课题名称:<span >${q.ktmc}</span><br/><br/>
	  		第一志愿:
	  		<c:forEach items="${q.studentfists}" var="f">
		  		<span>${f.sName }</span>
		  		<input type="radio" name="sNo" value="${f.sNo}"   <c:if test="${q.sNo==f.sNo}">checked="checked"</c:if>   >&nbsp;&nbsp;
		  	</c:forEach>
	  		<br/><br/>
	  		第二志愿:
	  		<c:forEach items="${q.studentSeconds}" var="s">
		  		<span>${s.sName }</span>
		  		<input type="radio" name="sNo" value="${s.sNo}"   <c:if test="${q.sNo==s.sNo}">checked="checked"</c:if>   >&nbsp;&nbsp;
		  	</c:forEach>
	  		<br/><br/>
	  		<input type="submit" value="提交" />
	  		<input type="button" value="保存" onclick="save(${q.xtbh})"/>
	  	</form>
	  	</c:forEach>
	  		
  	</div>
  </body>
</html>

