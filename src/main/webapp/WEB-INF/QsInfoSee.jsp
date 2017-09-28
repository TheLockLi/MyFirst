<%@ page  contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="base.jsp"></jsp:include>
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
    	    width: 956px;
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
    		height: 25px;
    		width: 40px;
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
        var ue4 = UE.getEditor('xgyj', {
            toolbars: [
                       ['indent']
                   ],
                   autoHeightEnabled: true,
                   autoFloatEnabled: true
        });
      
    </script>
    
  </head>
  <body>
  <h3>河北建筑工程学院</h3>
  <h1>2013届本科毕业设计(论文)选题申报表</h1>
  
  	<div id="body">
	  	
	  
	  	院（系）：理学院 &nbsp;&nbsp;
	  	专业：
					<c:if test="${qsInfo.sszy==1 }">信息与计算科学</c:if> 
					<c:if test="${qsInfo.sszy==2 }">力学</c:if> 
					<c:if test="${qsInfo.sszy==3 }">应用数学</c:if> 
				 &nbsp;&nbsp;
							
	  	年（届）：${qsInfo.ktnd } &nbsp;&nbsp;
	  	
	  	<div id="sbrq">申报日期：<fmt:formatDate value="${qsInfo.sbrq}" pattern="yyyy-MM-dd"/></div>
	    <div class="info">
	    	<span>基本信息</span><br/><br/>
	    	<table>
		    	<tr>
		    		<td>课程名称</td>
		    		<td colspan="5">${qsInfo.ktmc }</td>
		    		<td>课题来源</td>
		    		<td colspan="5">${qsInfo.ktly }</td>
		    	</tr>
		    	<tr>
		    		<td>指导教师</td>
		    		<td colspan="5">
					<%-- <input class="input-small" type="text"  value="${teacherInfo.tName }"/>--%>		    		
					${teacherInfo.tName }
		    		</td>
		    		
		    		<td>辅导教师</td>
		    		<td  colspan="5">
		    		<%-- <select name="fdjs">
		    				<c:forEach items="${teacherInfoList }" var="t">
									<option value="${t.tCode }" >${t.tName }</option>
		    				</c:forEach>
		    		</select> --%>
		    		${fdjs }
		    		</td>
		    	</tr>
		    	<tr>
		    		<td>课题类别</td>
		    		<td colspan="3">${qsInfo.ktlb }</td>
		    		<td>课题性质</td>
		    		<td colspan="3">${qsInfo.ktxz }</td>
		    		<td>是否新开</td>
		    		<td colspan="3">${qsInfo.sfxk }</td>
		    	</tr>
		    	<tr>
		    		<td>难易程度</td>
		    		<td colspan="5">${qsInfo.nycd }</td>
		    		<td>工作量</td>
		    		<td colspan="5">${qsInfo.gzl }</td>
		    	</tr>
		    	
	    	</table>
	    </div>
	    <div class="info">
		    <span>背景意义</span><br/><br/>
		    <table>
			    <tr>
				  	<td colspan="7"><script id="bjyy" name="bjyy" type="text/plain"> ${qsInfo.bjyy}</script></td>  
				</tr>
			</table>
		</div>
	    <div class="info">
		    <span>研究内容</span><br/><br/>
		    <table>
			    <tr>
				  	<td colspan="7"><script id="yjnr" name="yjnr" type="text/plain">${qsInfo.yjnr} </script></td>  
				</tr>
			</table>
		</div>
	    <div class="info">
		    <span>知识要求</span><br/><br/>
		    <table>
			    <tr>
				  	<td colspan="7"><script id="zsyq" name="zsyq" type="text/plain">${qsInfo.zsyq} </script>
   					 </td>  
				</tr>
			</table>
		  	
			</div>
	    <div class="info">
		    <span>修改意见</span><br/><br/>
		    <table>
			    <tr>
				  	<td colspan="7"><script id="xgyj" name="xgyj" type="text/plain">${qsInfo.xgyj} </script>
   					 </td>  
				</tr>
			</table>
		  	
			</div>
	    
			</table>
			</div>
    	
    </div>
  </body>
</html>

