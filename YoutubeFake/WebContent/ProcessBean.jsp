<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ProcessBean page</title>
</head>
<body>
	<jsp:useBean id="objUser" class="actionTagBean.UserBean" scope="application"></jsp:useBean>
	<jsp:setProperty property="*" name="objUser"/>
	
	<h1>User Added in Record is:</h1> <br><br>
	name:<jsp:getProperty property="name" name="objUser"/><br><br>
	email:<jsp:getProperty property="email" name="objUser"/><br><br>
	password:<jsp:getProperty property="password" name="objUser"/><br><br>
	<!-- exmple of expression Language -->
	Welcome,${param.name}<br>
	
	<%session.setAttribute("email", "harsh@gmail.com"); %>
	<a href="Second.jsp">Visit this page</a>
</body>
</html>