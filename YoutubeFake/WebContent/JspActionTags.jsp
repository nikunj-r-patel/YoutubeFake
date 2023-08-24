<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Action Tags</title>
</head>
<body>
	<h1>this is first page</h1>
	<%-- <h1>jsp:frword without parameter </h1>
	<jsp:forward page="PrintDate.jsp"></jsp:forward> --%>
	<h1>jsp:frword with parameter</h1>
	<%-- <jsp:forward page="PrintDate.jsp">
		<jsp:param name="name" value="webosmotic.com" />
	</jsp:forward> --%>
	<jsp:include page="PrintDate.jsp"></jsp:include><br>
	<jsp:useBean id="calcy" class="actionTagBean.Calculator" />
	<h2>
		<%
			int m = calcy.cube(4);
			out.print("the cube of 4 is" + m);
		%>
	</h2>
	
</body>
</html>