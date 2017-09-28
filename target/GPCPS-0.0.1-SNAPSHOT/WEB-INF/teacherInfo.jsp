<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <title>课题申报</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
    <style type="text/css">
    	* {
    	margin: 0;
    	padding: 0;
		}
    	h1,h3{
    		text-align: center;
    	}
    	input[type='text']{
    		color: blue;
    	}
    	table{
	    	border:#333 1px solid;
	    	border-collapse:collapse;
    	}
		table th, table td {
			border:#333 1px solid;
			padding:10px 10px 10px 10px;
		}
    	#body{
    		width: 987px;
    		margin: 0 auto;
    	}
    	.info{
    		margin-top:10px;
    		padding:10px 15px;
    		border: 1px solid #aaa;
    	}
    	.info>span{
    		font-weight: bold;
    	}
		.input-middle{
			width:180px;
		}
		.input-small{
			width:50px;
		}
		.input-large{
			width:390px;
		}
		#time{
			float:right;
		}
		input[type="submit"]{
    		float: right;
    	}
    	#sbrq{
    	 float:right;
    	}
    </style>
    <script type="text/javascript" src="../js/datepicker/WdatePicker.js"></script>
  </head>
  
  <body>
  <h3>河北建筑工程学院</h3>
  <h1>个人信息查看及修改</h1>
  
  	<div id="body">
	  	<form action="updateTeacherInfo.action" method="post">
	  	教师编号:	${teacherInfo.tCode} &nbsp;
	  	院（系）：理学院 &nbsp;
	  	专业：<select name="major">
									<option value="1" <c:if test="${teacherInfo.major==1 }">selected="selected"</c:if> >信息与计算科学</option>
									<option value="2" <c:if test="${teacherInfo.major==2 }">selected="selected"</c:if> >力学</option>
									<option value="3" <c:if test="${teacherInfo.major==3 }">selected="selected"</c:if> >应用数学</option>
				</select> &nbsp;
							
	  	年（届）：${hTprof.dYear } &nbsp;
	 
	  
	  	
	    <div class="info">
	    	<span>基本信息</span><br/><br/>
	    	<table>
		    	<tr>
		    		<td>性别</td>
		    		<td colspan="5">
		    			<input name="tSex" type="radio" value="男" <c:if test="${teacherInfo.tSex=='男' }">checked="checked"</c:if> />男
						<input name="tSex" type="radio" value="女" <c:if test="${teacherInfo.tSex=='女' }">checked="checked"</c:if> />女
		    		</td>
		    		<td>出生日期</td>
		    		<td colspan="5">
		    			 	<input id="time"type="text" style="width:121px;" name="birthday"
	   							onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});" value="<fmt:formatDate value="${teacherInnfo.birthday}" pattern="yyyy-MM-dd"/>"/>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td>民族</td>
		    		<td><input class="input-small" type="text" name="nationality"  value="${teacherInfo.nationality }"/></td>
		    		<td>政治面貌</td>
		    		<td><input class=input-small type="text" name="politival"  value="${teacherInfo.politival }"/></td>
		    		<td>学历</td>
		    		<td><input class="input-small" type="text" name="eduLevel"  value="${teacherInfo.eduLevel }"/></td>
		    		<td>学位</td>
		    		<td><input class="input-small" type="text" name="degree"  value="${teacherInfo.degree }"/></td>
		    		<td>职称</td>
		    		<td><input class="input-small" type="text" name="prof" value="${teacherInfo.prof }"/></td>
		    		<td>职务</td>
		    		<td><input class="input-small" type="text" name="post" value="${teacherInfo.post }"></td>
		    	</tr>
		    	<tr>
		    		<td>电话</td>
		    		<td colspan="3"><input class="input-middle" type="text" name="telephone"  value="${teacherInfo.telephone}" /></td>
		    		<td>邮箱</td>
		    		<td colspan="3"><input class="input-middle" type="text" name="eMail"  value="${teacherInfo.eMail}" /></td>
		    		<td>QQ</td>
		    		<td colspan="3"><input class="input-middle" type="text" name="qqNum"  value="${teacherInfo.qqNum}" /></td>
		    	</tr>
		    	
		    	<tr>
		    		<td>是否离岗</td>
		    		<td colspan="7">
		    			<input name="offJob" type="radio" value="0" <c:if test="${teacherInfo.offJob==0 }">checked="checked"</c:if> />在职
						<input name="offJob" type="radio" value="1" <c:if test="${teacherInfo.offJob==1 }">checked="checked"</c:if> />离职
		    		</td>
		    		<td>互动选题提交</td>
		    		<td colspan="3">
		    			<input name="cComc" type="radio" value="0" <c:if test="${teacherInfo.cComc==0 }">checked="checked"</c:if> />是
						<input name="cComc" type="radio" value="1" <c:if test="${teacherInfo.cComc==1 }">checked="checked"</c:if> />否
		    	
		    		</td>
		    	</tr>
	    	</table>
	    </div>
	    <div class="info">
		    <span>研究方向</span><br/><br/>
		    <table>
			    <tr>
				  	<td colspan="7"><textarea rows="8" cols="130" name="sField" >${teacherInfo.sField }</textarea></td>  
				</tr>
			</table>
		</div>
	    <div class="info">
		    <span>特长</span><br/><br/>
		    <table>
			    <tr>
				  	<td colspan="7"><textarea rows="8" cols="130" name="specialty" >${teacherInfo.specialty }</textarea></td>  
				</tr>
			</table>
		</div>
	    <div class="info">
		    <span>备注</span><br/><br/>
		    <table>
			    <tr>
				  	<td colspan="7"><textarea rows="8" cols="130" name="remarks" >${teacherInfo.remarks }</textarea></td>  
				</tr>
			</table>
		</div>
		  	<input type="submit" value="提交" />
    	</form>
    </div>
  </body>
</html>

