
<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>注册页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--  
        <link rel="stylesheet" type="text/css" href="styles.css">  
        -->
<script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
<script language="javascript">
	function isValid(form) {
		if (form.adminName.value == "") {
			alert("用户名不能为空");
			return false;
		}
		if (form.adminPassword.value != form.adminPassword2.value) {
			alert("两次输入的密码不同！");
			return false;
		} else if (form.adminPassword.value == "") {
			alert("用户密码不能为空！");
			return false;
		}
		else return true;
	}
</script>
</head>

<body>
	<center>
		<body>
			<h2>管理员注册</h2>
			<form action="admin-save" method="post"
				onSubmit="return isValid(this);">
				<table>
					<tr>
						<td>用户名:</td>
						<td><input type="text" name="adminName" size="20" /></td>
					</tr>
					<tr>
						<td>输入密码:</td>
						<td><input type="text" name="adminPassword" size="20" /></td>
					</tr>
					<tr>
						<td>再次确认密码:</td>
						<td><input type="text" name="adminPassword2" size="20" /></td>
					<tr>
					<tr>
						<td><input type="submit" value="注册" />
						<td><input type="reset" value="重置" />
				</table>
			</form>
	</center>
	<br>
</body>
</html>