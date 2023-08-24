<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SecondJSP page</title>
</head>
<body>
	<jsp:useBean id="objUser" class="actionTagBean.UserBean" scope="application"></jsp:useBean>
	<% String name="harsh patel";%>
	<jsp:setProperty property="name" name="objUser" value="<%=name%>"/>
	
	
	Email is ${sessionScope.email}
	<h1>User Updated in Record is:</h1> <br><br>
	name:<jsp:getProperty property="name" name="objUser"/><br><br>
	email:<jsp:getProperty property="email" name="objUser"/><br><br>
	password:<jsp:getProperty property="password" name="objUser"/><br><br>
</body>
</html>