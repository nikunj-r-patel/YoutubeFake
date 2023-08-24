<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Random,java.util.ArrayList, java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Second JSP</title>
<style>
*{
	margin: 0px;
	padding: 0px;
}
</style>
</head>
<body>
	<%@include file="header.jsp" %>
	<h1>Random Numbers: 
	<%
	Random r= new Random();
	int n=r.nextInt(10);
	%>
	<h1>the random number generated is: <%= n %></h1>
	
</body>
</html>