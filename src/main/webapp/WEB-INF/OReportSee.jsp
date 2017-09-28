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
        var ue1 = UE.getEditor('yjyy', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue2 = UE.getEditor('jbnr', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue3 = UE.getEditor('yjff', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue4 = UE.getEditor('zdgj', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue5 = UE.getEditor('ztap', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue6 = UE.getEditor('ckwx', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue6 = UE.getEditor('dsyj', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue6 = UE.getEditor('xgjy', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
        var ue7 = UE.getEditor('shyj', {
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
	    		flag=checkUE("yjyy",350,"研究意义不得多于350字")&&flag;
	    		flag=checkUE("jdnr",350,"基本内容不得多于350字")&&flag;
	    		flag=checkUE("yjff",350,"研究思路方法不得多于350字")&&flag;
	    		flag=checkUE("zdgj",350,"参考重点关键不得多于350字")&&flag;
	    		flag=checkUE("ztap",350,"总体安排不得多于350字")&&flag;
	    		flag=checkUE("ckwx",350,"参考文献不得多于350字")&&flag;
	    		flag=checkUE("dsyj",350,"导师意见不得多于350字")&&flag;
	    		flag=checkUE("xgjy",350,"修改建议不得多于350字")&&flag;
	    		
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
    </script>
    
  </head>
  
  <body>
	<div id="task">
	
			
				
					<h1>开题报告</h1>
					<h3>${qsInfo.ktmc }</h3>
					&nbsp;&nbsp;&nbsp;&nbsp;院系:
					理学院&nbsp;&nbsp;
					年度（届）:
					<input type="text" name="dYear" readonly="readonly"
						value="${oReport.dYear}" />&nbsp;&nbsp;
					
					所属专业:
					
					<select name="dSszy">
							<option value="1" <c:if test="${oReport.dSszy==1 }">selected="selected"</c:if>>信息与计算科学</option>
							<option value="2" <c:if test="${oReport.dSszy==2 }">selected="selected"</c:if>>力学</option>
							<option value="3" <c:if test="${oReport.dSszy==3 }">selected="selected"</c:if>>应用数学</option>
					</select>&nbsp;&nbsp;&nbsp;&nbsp;
					课题编号:
					<input type="text" name="ktbh" readonly="readonly"
						value="${oReport.ktbh}" />
			<div class="info">
					<span>研究意义</span><br />
					<br />
					<table>
						<tr>
							<td><script id="yjyy" name="yjyy"
									type="text/plain"> ${oReport.yjyy}</script></td>
						</tr>
					</table>
				</div>
				<div class="info">
					<span>基本内容</span><br />
					<br />
					<table>
						<tr>
							<td><script id="jbnr" name="jbnr"
									type="text/plain">${oReport.jbnr} </script></td>
						</tr>
					</table>
				</div>
				<div class="info">
					<span>研究思路方法</span><br />
					<br />
					<table>
						<tr>
							<td><script id="yjff" name="yjff"
									type="text/plain" >${oReport.yjff} </script></td>
						</tr>
					</table>
				</div>
				<div class="info">
					<span>重点关键</span><br />
					<br />
					<table>
						<tr>
							<td><script id="zdgj" name="zdgj"
									type="text/plain">${oReport.zdgj} </script></td>
						</tr>
					</table>
				</div>
				<div class="info">
					<span>总体安排</span><br />
					<br />
					<table>
						<tr>
							<td><script id="ztap" name="ztap"
									type="text/plain">${oReport.ztap} </script></td>
						</tr>
					</table>
				</div>
				<div class="info">
					<span>参考文献</span><br />
					<br />
					<table>
						<tr>
							<td><script id="ckwx" name="ckwx"
									type="text/plain"> ${oReport.ckwx}</script></td>
						</tr>
					</table>
				</div>
				<div class="info">
					<span>导师意见</span><br />
					<br />
					<table>
						<tr>
							<td><script id="dsyj" name="dsyj"
									type="text/plain"> ${oReport.dsyj}</script></td>
						</tr>
					</table>
				</div>
				<div class="info">
					<span>审核意见</span><br />
					<br />
					<table>
						<tr>
							<td><script id="shyj" 
									type="text/plain"> ${oReport.shyj}</script></td>
						</tr>
					</table>
				</div>
				<div class="info">
					<span>修改建议</span><br />
					<br />
					<table>
						<tr>
							<td><script id="xgjy" name="xgjy"
									type="text/plain"> ${oReport.xgjy}</script></td>
						</tr>
					</table>
				</div>

			
			</div>
	


	  
  	</div>
  </body>
</html>
