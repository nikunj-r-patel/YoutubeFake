<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sorry!! Something went wrong....</title>
<style>
	*{
		margin: 0px;
		padding: 0px;
	}
</style>
</head>
<body>
	<div style="padding: 20px; color: blue; background: #e2e2e2">
		<h1>Sorry!! Something went wrong....</h1><br>
		<p>The reason is: <%=exception %></p>
	</div>
</body>
</html>