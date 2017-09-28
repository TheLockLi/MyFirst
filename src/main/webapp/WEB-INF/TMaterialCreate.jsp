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
        var ue1 = UE.getEditor('fZqWt', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue2 = UE.getEditor('fZqPy', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue3 = UE.getEditor('fWwpy', {
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
	    		flag=checkUE("fZqWt",100,"中期检查问题不得多于100字")&&flag;
	    		flag=checkUE("fZqPy",100,"中期检查评语不得多于100字")&&flag;
	    		flag=checkUE("fWwpy",100,"外文翻译评语不得多于100字")&&flag;
	    		
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
					document.getElementById("from").action= "saveTMaterial.action";
					document.forms.from.submit();
				}
			}
    
    </script>
  </head>
  <body>
  <h3>河北建筑工程学院</h3>
  <h1>2013届本科毕业设计(论文)选题申报表</h1>
  
  	<div id="body">
	  	<form id= "from" action="submitTMaterial.action" method="post" onsubmit="return checkForm()">
	  	<input type="hidden" name="ktbh" value="${ktbh }">
	  	院（系）：理学院 &nbsp;&nbsp;
	  	专业：<select name="sszy">
									<option value="1" <c:if test="${qsInfo.sszy==1 }">selected="selected"</c:if> >信息与计算科学</option>
									<option value="2" <c:if test="${qsInfo.sszy==2 }">selected="selected"</c:if> >力学</option>
									<option value="3" <c:if test="${qsInfo.sszy==3 }">selected="selected"</c:if> >应用数学</option>
				</select> &nbsp;&nbsp;
							
	  	年（届）：<input type="text" name="dYear" readonly="readonly"
						value="${qsInfo.ktnd}" />&nbsp;&nbsp;
	  	指导教师 ： <input type="hidden" name="tNo" value="${teacherInfo.tCode }"> ${teacherInfo.tName }
	    <div class="info">
	    	<span>基本信息</span><br/><br/>
	    	<table>
		    	<tr>
		    		<td>任务书</td>
		    		<td colspan="5">
		    			<input class="input-large" type="text" name="jRws"/>
		    		</td>
		    		<td>外文翻译</td>
		    		<td colspan="5">
		    			<input class="input-large" type="text" name="jWwfy"/>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td>开题报告</td>
		    		<td colspan="5">
		    			<input class="input-large" type="text" name="jKtbg"/>
		    		</td>
		    		<td>学习态度</td>
		    		<td  colspan="5">
		    			<input class="input-large" type="text" name="jXxtd"/>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td>出勤情况</td>
		    		<td colspan="5">
		    			<input class="input-large" type="text" name="jCqqk"/>
		    		</td>
		    		<td>工作进度</td>
		    		<td  colspan="5">
		    			<input class="input-large" type="text" name="jGzjd"/>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td>回报解答</td>
		    		<td colspan="5">
		    			<input class="input-large" type="text" name="jHbjd"/>
		    		</td>
		    		<td>成绩评定</td>
		    		<td  colspan="5">
		    			<input class="input-large" type="text" name="jCjpy"/>
		    		</td>
		    	</tr>
		    	
		    	<tr>
		    		<td>完成日期</td>
		    		<td colspan="5"><input id="time"type="text" style="width:121px;" name="fWcrq"
	   		onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/></td>
		    		<td>实习成绩</td>
		    		<td colspan="5"><input class="input-middle" type="text"  name="fSxcj" /></td>
		    		
		    	</tr>
		    	
	    	</table>
	    </div>
	    <div class="info">
		    <span>中期检查问题</span><br/><br/>
		    <table>
			    <tr>
				  	<td colspan="7"><script id="fZqWt" name="fZqWt" type="text/plain"> </script></td>  
				</tr>
			</table>
		</div>
	    <div class="info">
		    <span>中期检查评语</span><br/><br/>
		    <table>
			    <tr>
				  	<td colspan="7"><script id="fZqPy" name="fZqPy" type="text/plain"> </script></td>  
				</tr>
			</table>
		</div>
	    <div class="info">
		    <span>外文翻译评语</span><br/><br/>
		    <table>
			    <tr>
				  	<td colspan="7"><script id="fWwpy" name="fWwpy" type="text/plain"> </script>
   					 </td>  
				</tr>
			</table>
			</div>
	    
		  	<input type="submit" value="提交" />
		  	<input type="button" value="保存" onclick="save()" />
			</table>
			</div>
    	</form>
    </div>
  </body>
</html>

