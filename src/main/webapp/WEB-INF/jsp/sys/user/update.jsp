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
<form action="${webPath}/user/update" name="form1"  id="form1"  method="post">
	<input name="id" value="${user.id}" />
	<table border="1px" style="border-collapse: collapse" >
		<tr>
			<td>姓名</td><td  style="border-collapse: collapse"><input name="name"  value="${user.name}"> </td>
		</tr>	
		<tr>
			<td>年龄</td><td style="border-collapse: collapse"><input name="age"  value="${user.age}"  > </td>
		</tr>
 	
	</table>
	<input type="submit"  value="保存" >
</form>
</body>
</html>