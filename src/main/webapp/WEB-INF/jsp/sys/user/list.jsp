<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%request.setAttribute("webPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="${webPath}/resources/js/jquery-1.7.1.min.js" ></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list</title>
</head>
<body>
<form action="" name="form1"  id="form1"  method="post">
	
	<table border="1px" style="border-collapse: collapse">
		<tr>
			<td>主键<input name="id" value="${cond.id}" /> </td>
			<td>姓名<input name="name"  value="${cond.name}" > </td>
			<td>年龄<input name="age"  value="${cond.age}" > </td>
			<td><input type="button" value="查询" onclick="query()" > </td>
		</tr>
 	</table>
	<br/>
	<input type="button" value="新增" onclick="toInsert()" style="width: 80px" />
	<br/>
	<br/>
	<table border="1px" cellpadding="0px" style="border-collapse: collapse">
		<tr>
			<th style="height: 80px;width: 110px">主键</th>
			<th style="height: 60px;width: 110px">姓名</th>
			<th style="height: 60px;width: 110px">年龄</th>
			<th style="height: 60px;width: 110px">修改</th>
			<th style="height: 60px;width: 110px">删除</th>
			<th style="height: 60px;width: 110px">详细</th>
		</tr>
		<c:forEach items="${userList}" var="user" >
			<tr>
				<td align="center">${user.id}</td>
				<td align="center">${user.name}</td>
				<td align="center">${user.age}</td>
				<td align="center"><input type="button" value="修改" onclick="toUpdate('${user.id}')" /></td>
				<td align="center"><input type="button" value="删除" onclick="toDelete('${user.id}')" /></td>
				<td align="center"><input type="button" value="详细" onclick="toDetail('${user.id}')" /></td>
			</tr>
		</c:forEach>
	</table>
	当前页：<input name="curPage" value="${cond.curPage}" /><br>
	页大小：<input name="pageSize" value="${cond.pageSize}" /><br>
	总页数：${cond.pageCount}<br>
	总记录数：${cond.rowCount}<br>
</form>
</body>
<script type="text/javascript">
function toInsert(){//转到新增页
	$("#form1").attr("action","${webPath}/user/toinsert");
	$("#form1").submit();
}

function toUpdate(id){//转到修改页
	$("#form1").attr("action","${webPath}/user/toupdate?id="+id);
	$("#form1").submit();
}

function toDetail(id){//转到详情页
	$("#form1").attr("action","${webPath}/user/todetail?id="+id);
	$("#form1").submit();
}

function toDelete(id){//删除数据
	$("#form1").attr("action","${webPath}/user/delete?id="+id);
	$("#form1").submit();
}

function query(){//查询数据
	$("#form1").attr("action","${webPath}/user/list");
	$("#form1").submit();
}
</script>
</html>