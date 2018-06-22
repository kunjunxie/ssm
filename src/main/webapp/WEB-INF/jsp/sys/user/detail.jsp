<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%request.setAttribute("webPath", request.getContextPath());%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update</title>
</head>
<body>
<form action="" name="form1"  id="form1"  method="post">
	<table border="1px" cellpadding="0px" style="border-collapse: collapse">
		<tr>
			<td>主键</td><td>${user.id}</td>
		</tr>	
		<tr>
			<td>姓名</td><td>${user.name}</td>
		</tr>	
		<tr>
			<td>年龄</td><td>${user.age}</td>
		</tr>
	</table>
</form>
</body>
</html>