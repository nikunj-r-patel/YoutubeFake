<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>hello world</h1>
	<!--using declarative tag  -->
	<%!int a = 50;
	int b = 40;
	String name = "nikunjkumar";

	public int doSum() {
		return a + b;
	}
	public String doReverse() {
		StringBuffer strBr = new StringBuffer(name);
		return strBr.reverse().toString();

	}%>
	<!--using scriptlet tag  -->
	<h1><%
	out.println(a);
	out.println("<br>");
	out.println(b);
	out.println("<br>");
	out.println("the sum is:"+doSum());
	out.println("<br>");
	out.println("name in reverce: "+doReverse());
	%></h1>
	<!--using expression tag  -->
	<h1>print using expression: <%=a %></h1>
	<h1>print using expression: <%=b %></h1>
	<h1>print using expression: <%=a+b %></h1>
	<h1>print using expression: <%=doSum() %></h1>
	<h1>print using expression: <%=doReverse()%></h1>
</body>
</html> 