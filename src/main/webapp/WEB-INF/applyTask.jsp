<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    		width:150px;
    		height:50px;
    		font-size:20px;
    	}
    	input[type="button"]{
    		float: right;
    		width:150px;
    		height:50px;
    		font-size:20px;
    	}
    	#sbrq{
    		 float:right;
    	}
    </style>
    <script type="text/javascript" src="../js/datepicker/WdatePicker.js"></script>
    <!-- 配置文件 -->
    <script type="text/javascript" src="../js/ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="../js/ueditor/ueditor.all.js"></script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="../js/ueditor/lang/zh-cn/zh-cn.js"></script>
    <!-- 实例化编辑器 -->
     <script type="text/javascript">
        var ue1 = UE.getEditor('bjyy', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue2 = UE.getEditor('yjnr', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue3 = UE.getEditor('zsyq', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
    </script>
    <script type="text/javascript">
    
    	window.onload=function(){
    	}
	    	function checkForm() {
	    		var flag = true;
	    		flag=checkUE("bjyy",350,"背景意义不得多于350字")&&flag;
	    		flag=checkUE("yjnr",350,"研究内容不得多于350字")&&flag;
	    		flag=checkUE("zsyq",350,"知识要求不得多于350字")&&flag;
	    		
	    		return flag;
			}
	    	function checknull(name,len,msg){
	    		var value = document.getElementById(name).value;
	    		
	    		if(value.length>len){
	    			alert(msg);
	    			return false;
	    		}
	    		return true;
	    	}
	    	function checkUE(name,len,msg){
	    		var content = UE.getEditor(name).getContent();
	    		
	    		if(content.length>len){
	    			alert(msg);
	    			return false;
	    		}
	    		return true;
	    	}
    		
	    	function save() {
	    		if(checkForm()){
					document.forms.from.action= "saveApplyTask.action";
					document.forms.from.submit();
	    		}
			}
    
    </script>
  </head>
  <body>
  <h3>河北建筑工程学院</h3>
  <h1>2013届本科毕业设计(论文)选题申报表</h1>
  
  	<div id="body">
	  	<form id="from" action="submitApplyTask.action" method="post" onsubmit="return checkForm()">
	  	<input type="hidden" name="tCode" value="${teacherInfo.tCode }">
	  	院（系）：理学院 &nbsp;&nbsp;
	  	专业：<select name="sszy">
									<option value="1" <c:if test="${teacherInfo.major==1 }">selected="selected"</c:if> >信息与计算科学</option>
									<option value="2" <c:if test="${teacherInfo.major==2 }">selected="selected"</c:if> >力学</option>
									<option value="3" <c:if test="${teacherInfo.major==3 }">selected="selected"</c:if> >应用数学</option>
				</select> &nbsp;&nbsp;
							
	  	年（届）：<input type="text" value="${hTprof.dYear }" name="ktnd"/>  &nbsp;&nbsp;
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
		    			<select name="ktly">
									<option value="教师拟定"  >教师拟定</option>
									<option value="学生自选"  >学生自选</option>
									<option value="横向合作"  >横向合作</option>
				</select>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td>指导教师</td>
		    		<input class="input-small" type="hidden" name="zdjs"  value="${teacherInfo.tCode }"/>
		    		<td colspan="5"><input class="input-small" type="text"  value="${teacherInfo.tName }"/></td>
		    		
		    		<td>辅导教师</td>
		    		<td  colspan="5">
		    		<select name="fdjs">
		    				<c:forEach items="${teacherInfoList }" var="t">
									<option value="${t.tCode }" >${t.tName }</option>
		    				</c:forEach>
		    		</select>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td>课题类别</td>
		    		<td colspan="3"><input class="input-middle" type="text" name="ktlb" /></td>
		    		<td>课题性质</td>
		    		<td colspan="3"><input class="input-middle" type="text" name="ktxz" /></td>
		    		<td>是否新开</td>
		    		<td colspan="3">
		    			<input name="sfxk" type="radio" value="是"  />是
						<input name="sfxk" type="radio" value="否"  />否
		    		</td>
		    	</tr>
		    	<tr>
		    		<td>难易程度</td>
		    		<td colspan="5"><input class="input-middle" type="text" name="nycd" /></td>
		    		<td>工作量</td>
		    		<td colspan="5"><input class="input-middle" type="text"  name="gzl" /></td>
		    		
		    	</tr>
		    	
	    	</table>
	    </div>
	    <div class="info">
		    <span>背景意义</span><br/><br/>
		    <table>
			    <tr>
				  	<td ><script id="bjyy" name="bjyy" type="text/plain"> </script></td>  
				</tr>
			</table>
		</div>
	    <div class="info">
		    <span>研究内容</span><br/><br/>
		    <table>
			    <tr>
				  	<td ><script id="yjnr" name="yjnr" type="text/plain"> </script></td>  
				</tr>
			</table>
		</div>
	    <div class="info">
		    <span>知识要求</span><br/><br/>
		    <table>
			    <tr>
				  	<td ><script id="zsyq" name="zsyq" type="text/plain"> </script>
   					 </td>  
				</tr>
			</table>
		  	<input type="submit" value="提交" />
		  	<input id=“save”  type="button" value="保存"  onclick="save()"/>
			</div>
	    
			</table>
			</div>
    	</form>
    </div>
  </body>
</html>

