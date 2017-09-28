<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
 	 		<th>年度(届)</th>
 	 		<th>申报日期</th>
 	 		<th>课题性质</th>
 	 		<th>指导教师</th>
 	 		<th>选择学生</th>
 	 		<th>状态</th>
 	 		<th>任务书</th>
 	 		<th>开题报告</th>
 	 		<th>中期检查</th>
 	 	</tr>
 	 	<c:forEach items="${qsInfoList}" var="q">
 	 		<tr>
 	 			<td>${q.xtbh }</td>
 	 			<td>${q.ktmc }</td>
 	 			<td>${q.ktnd }</td>
 	 			<td><fmt:formatDate value="${q.sbrq}" pattern="yyyy-MM-dd"/></td>
 	 			<td>${q.ktxz }</td>
 	 			<td>${teacherInfo.tName }</td>
	 			<td>${q.studentInfo.sName }</td>
	 			<td>
	 				<c:if test="${q.flag==0}">淘汰|<a href="/seeQsInfo.action?ktbh=${q.xtbh }">查看</a></c:if>
	 				<c:if test="${q.flag==1}">条件通过|<a href="/updateQsInfo.action?ktbh=${q.xtbh }">修改</a></c:if>
	 				<c:if test="${q.flag==2}">通过|<a href="/seeQsInfo.action?ktbh=${q.xtbh }">查看</a></c:if>
	 				<c:if test="${q.flag==3}">已保存|<a href="/updateQsInfo.action?ktbh=${q.xtbh }">查看</a></c:if>
	 			</td>
	 			<td>
	 				<c:if test="${q.sRws==0}">未填写|<a href="/toRws.action?ktbh=${q.xtbh }">填写</a></c:if>
	 				<c:if test="${q.sRws==1}">协商|<a href="/updateRws.action?ktbh=${q.xtbh }">修改</a></c:if>
	 				<c:if test="${q.sRws==2}">已通过|<a href="/seeRws.action?ktbh=${q.xtbh }">查看</a></c:if>
	 				<c:if test="${q.sRws==3}">已保存|<a href="/updateRws.action?ktbh=${q.xtbh }">查看</a></c:if>
	 			</td>
	 			<td>
	 				<c:if test="${q.sKtbg==0}">已填写|<a href="/toKtbg.action?ktbh=${q.xtbh }">审阅</a></c:if>
	 				<c:if test="${q.sKtbg==1}">协商|<a href="/updateKtbg.action?ktbh=${q.xtbh }">修改</a></c:if>
	 				<c:if test="${q.sKtbg==2}">已通过|<a href="/seeKtbg.action?ktbh=${q.xtbh }">查看</a></c:if>
	 				<c:if test="${q.sKtbg==3}">已保存|<a href="/updateKtbg.action?ktbh=${q.xtbh }">查看</a></c:if>
	 				<c:if test="${q.sKtbg==4}">未填写<a href="/toKtbg.action?ktbh=${q.xtbh }"></a></c:if>
	 			</td>
	 			<td>
	 				<c:if test="${q.sZqjc==0}">未填写|<a href="/toZqjc.action?ktbh=${q.xtbh }">填写</a></c:if>
	 				<c:if test="${q.sZqjc==1}">已提交|<a href="/seeZqjc.action?ktbh=${q.xtbh }">查看</a></c:if>
	 				<c:if test="${q.sZqjc==2}">已保存|<a href="/updateZqjc.action?ktbh=${q.xtbh }">查看</a></c:if>
	 				
	 			</td>
	 			
 	 		</tr>
 	 	</c:forEach>
 	 </table>
  </body>
</html>

