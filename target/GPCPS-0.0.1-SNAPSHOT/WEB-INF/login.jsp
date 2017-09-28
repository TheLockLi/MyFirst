<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
		<link rel="stylesheet" href="css/index.css"/>
		<link rel="shortcut icon" href="img/head/logo.png">
		<title>欢迎使用毕业设计选课系统</title>
		<script type="text/javascript">
			function openRegist() {
				window.open("toregist.action","_self");
			}
		</script>
		<style type="text/css">
			h3{
				text-align: center;
			}
		</style>
	</head>
	<body>
		<h1>欢迎登陆选课系统</h1>
		<h3>${msg}</h3>
		<form action="/login.action" method="POST">
			<table>
				<tr>
					<td class="tdx">教师编号:</td>
					<td><input type="text" name="tCode" value="${Cookie.remname.value}"/></td>
				</tr>
				<tr>
					<td class="tdx">密码:</td>
					<td><input type="password" name="pWord"/></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="checkbox" name="remname" value="true"/>记住用户名
						<input type="checkbox" name="autologin" value="true"/>30天内自动登陆
					</td>
				</tr>
				<tr>
					<td colspan="2"  >
						<span style="margin-left: 77px">
							<input type="submit" value="登陆" />
						</span>
					</td>
				
				</tr>
			</table>
		</form>		
	</body>
</html>
