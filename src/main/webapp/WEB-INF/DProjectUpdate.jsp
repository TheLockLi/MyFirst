<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
  <head>
    <title>申报任务书表</title>
	
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <style type="text/css">
    	#task{
    		margin: 0 auto;
    		padding: 30px 20px;
    		width: 1100px;
    		border: 1px solid #ccc;
    	}
    	table{
    		border:1px solid #333;
    		border-collapse:collapse;
    	}
    	table tr, table td{
    		padding:  5px;
    		text-align:center;
    		border:1px solid #555;
    	}
    	input[type="text"], textarea{
    		color: blue;
    		text-indent: 10px;
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
    	.info{
    		margin-top:10px;
    		padding:10px 15px;
    		border: 1px solid #aaa;
    	}
    	h1,h3{
    		text-align: center;
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
     <script type="text/javascript">
        var ue1 = UE.getEditor('sjmd', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue2 = UE.getEditor('nryq', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue3 = UE.getEditor('cgyq', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue4 = UE.getEditor('ckwx', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue5 = UE.getEditor('jdap', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue6 = UE.getEditor('shyj', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        window.onload=function(){
    	}
	    	function checkForm() {
	    		var flag = true;
	    		flag=checkUE("sjmd",350,"设计目的不得多于350字")&&flag;
	    		flag=checkUE("nryq",350,"内容要求不得多于350字")&&flag;
	    		flag=checkUE("cgyq",350,"成果要求不得多于350字")&&flag;
	    		flag=checkUE("ckwx",350,"参考文献不得多于350字")&&flag;
	    		flag=checkUE("jdap",350,"进度安排不得多于350字")&&flag;
	    		
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
				checkForm();
				document.getElementById("from").action="/tosaveDProject.action";
				document.forms.from.submit();
			}
    </script>
    
  </head>
  
  <body>
	<div id="task">
		<form id="from" action="/updateDProject.action" method="post"  onsubmit="return checkForm()">
			
				
					<h1>申报任务书表</h1>
					<h3>${qsInfo.ktmc }</h3>
					&nbsp;&nbsp;&nbsp;&nbsp;院系:
					理学院&nbsp;&nbsp;
					年度（届）:
					<input type="text" name="dYear" readonly="readonly"
						value="${dProject.dYear}" />&nbsp;&nbsp;
					
					所属专业:
					
					<select name="dSszy">
							<option value="1" <c:if test="${dProject.dSszy==1 }">selected="selected"</c:if>>信息与计算科学</option>
							<option value="2" <c:if test="${dProject.dSszy==2 }">selected="selected"</c:if>>力学</option>
							<option value="3" <c:if test="${dProject.dSszy==3 }">selected="selected"</c:if>>应用数学</option>
					</select>&nbsp;&nbsp;&nbsp;&nbsp;
					课题编号:
					<input type="text" name="ktbh" readonly="readonly"
						value="${dProject.ktbh}" />
			<div class="info">
					<span>设计目的</span><br />
					<br />
					<table>
						<tr>
							<td ><script id="sjmd" name="sjmd" type="text/plain"> ${dProject.sjmd}</script></td>
						</tr>
					</table>
				</div>
				<div class="info">
					<span>内容要求</span><br />
					<br />
					<table>
						<tr>
							<td ><script id="nryq" name="nryq" type="text/plain">${dProject.nryq} </script></td>
						</tr>
					</table>
				</div>
				<div class="info">
					<span>成果要求</span><br />
					<br />
					<table>
						<tr>
							<td ><script id="cgyq" name="cgyq" type="text/plain" >${dProject.cgyq} </script></td>
						</tr>
					</table>
				</div>
				<div class="info">
					<span>参考文献</span><br />
					<br />
					<table>
						<tr>
							<td ><script id="ckwx" name="ckwx" type="text/plain">${dProject.ckwx} </script></td>
						</tr>
					</table>
				</div>
				<div class="info">
					<span>进度要求</span><br />
					<br />
					<table>
						<tr>
							<td ><script id="jdap" name="jdap" type="text/plain">${dProject.jdap} </script></td>
						</tr>
					</table>
				</div>
				<div class="info">
					<span>审核意见</span><br />
					<br />
					<table>
						<tr>
							<td ><script id="shyj" name="shyj" type="text/plain"> ${dProject.shyj}</script></td>
						</tr>
					</table>
				</div>
				<input type="submit" value="提交" />
				<input id=“save”  type="button" value="保存"  onclick="save()"/>
			</div>
	


	  	</form>
  	</div>
  </body>
</html>
