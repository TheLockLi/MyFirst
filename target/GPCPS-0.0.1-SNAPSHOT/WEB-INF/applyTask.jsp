<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


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
  <h1>2013届本科毕业设计(论文)选题申报表</h1>
  
  	<div id="body">
	  	<form action="saveApplyTask.action" method="post">
	  	院（系）：<input type="hidden" name="teacherId"  value="${teacherId}"/>
	  	<input type="text" name="yc" />
	  	专业：<input type="text" name="sszy"/>
	  	年（届）：<input type="text" name="ktnd"/>
	  	<input id="time"type="text" style="width:121px;" name="sbrq"
	   		onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
	  	<div id="sbrq">申报日期：</div>
	    <div class="info">
	    	<span>基本信息</span><br/><br/>
	    	<table>
		    	<tr>
		    		<td>课程名称</td>
		    		<td colspan="5">
		    			<input class="input-large" type="text" name="ktmc"/>
		    		</td>
		    		<td>课题来源</td>
		    		<td colspan="5">
		    			<input class="input-middle" type="text" name="ktly" />
		    		</td>
		    	</tr>
		    	<tr>
		    		<td>指导教师</td>
		    		<td><input class="input-small" type="text" name="zdjs" /></td>
		    		<td>职称</td>
		    		<td><input class="input-small" type="text" name="zd_zc"/></td>
		    		<td>年龄</td>
		    		<td><input class=input-small type="text" name=" zd_nl" /></td>
		    		<td>辅导教师</td>
		    		<td><input class="input-small" type="text" name="fdjs" /></td>
		    		<td>职称</td>
		    		<td><input class="input-small" type="text" name="fd_zc" /></td>
		    		<td>年龄</td>
		    		<td><input class="input-small" type="text" name="fd_nl"/></td>
		    	</tr>
		    	<tr>
		    		<td>课题类别</td>
		    		<td colspan="3"><input class="input-middle" type="text" name="ktlb" /></td>
		    		<td>课题性质</td>
		    		<td colspan="3"><input class="input-middle" type="text" name="ktxz" /></td>
		    		<td>是否新开</td>
		    		<td colspan="3"><input class="input-middle" type="text" name="sfxk" /></td>
		    	</tr>
		    	<tr>
		    		<td>难易程度</td>
		    		<td colspan="3"><input class="input-middle" type="text" name="nycd" /></td>
		    		<td>工作量</td>
		    		<td colspan="3"><input class="input-middle" type="text"  name="gzl" /></td>
		    		<td>学生人数</td>
		    		<td colspan="3"><input class="input-middle" type="text" name="xsrs" /></td>
		    	</tr>
		    	<tr>
		    		<td>起止时间</td>
		    		<td colspan="7"><input class="input-large" type="text" name="qzsj" /></td>
		    		<td>周数</td>
		    		<td colspan="3"><input class="input-middle" type="text" name="zs" /></td>
		    	</tr>
	    	</table>
	    </div>
	    <div class="info">
		    <span>背景意义</span><br/><br/>
		    <table>
			    <tr>
				  	<td colspan="7"><textarea rows="8" cols="130" name="bjyy" ></textarea></td>  
				</tr>
			</table>
		</div>
	    <div class="info">
		    <span>研究内容</span><br/><br/>
		    <table>
			    <tr>
				  	<td colspan="7"><textarea rows="8" cols="130" name="yjnr" ></textarea></td>  
				</tr>
			</table>
		</div>
	    <div class="info">
		    <span>知识要求</span><br/><br/>
		    <table>
			    <tr>
				  	<td colspan="7"><textarea rows="8" cols="130"name="zsyq" ></textarea></td>  
				</tr>
			</table>
			</div>
		  	<input type="submit" value="提交" />
    	</form>
    </div>
  </body>
</html>

