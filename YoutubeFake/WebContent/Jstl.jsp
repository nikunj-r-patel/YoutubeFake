<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page errorPage="ErrorPage.jsp"%>>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Taglib Directives</title>
</head>
<body>
	<h1>Using taglib directives</h1>
	<c:set var="name" value="NikunjKumar Patel"></c:set>
	<c:out value="${name}"></c:out>
	<c:if test="${3>2}">
		<h1>yes this is true 3 is greater than 2</h1>
	</c:if>
	<%!
		int a = 40;
		int b = 2;// wil give error if 0
		String content = "nikunj";// will give error if null
	%>
	<%
		int division = a / b;
	%>
	<h1>the division is=<%=division%></h1>
	<%=content.length()%>
	<h1>more JSTL examples here</h1>
	<!-- 1.out Tag -->
	<!-- 2.set tag -->
	<c:set var="a" value="10"  scope="application" ></c:set>
	<h1>the value of a is:   <c:out value="${a}"></c:out> </h1>
	<!-- 3.remove tag -->
	<c:remove var="a"/>
	<h1>after removing value of a is:   <c:out value="${a}"></c:out> </h1>
	<!-- 4.if tag -->
	<c:set var="a" value="10"  scope="application" ></c:set>
	<h1>the value of a is again:   <c:out value="${a}"></c:out> </h1>
	<c:if test="${a==10}">
		<h1> hello everyone</h1>
	</c:if>
	<!-- 5. Choose, when,otherwise (as Switch, case, default in java) -->
	<c:choose>
		<c:when test="${a>0}">	
			<h1>the number is positive</h1>
		</c:when>
		<c:when test="${a<0}">	
			<h1>the number is positive</h1>
		</c:when>
		<c:otherwise>
			<h1>the number equal to zero</h1>
		</c:otherwise>
	 </c:choose>
	 <!-- 6.for each tag  -->
	 <c:forEach var="i" begin="0" end="3">
	 		<h1>the value of i is <c:out value="${i}"></c:out></h1>
	 </c:forEach>
	 <!-- for collections -->
	 <%-- <c:forEach var="j" items="$<>">
	 		<h1>the value of i is <c:out value="${i}"></c:out></h1>
	 </c:forEach> --%> 
	 <!-- 7.redirect tag -->
	 <%-- <c:redirect url="index.html"></c:redirect> --%>
	 <!-- 8 url tag, param tag -->
	 <c:url var="myUrl" value="https://google.com/search">
	 	<c:param name="q" value="webosmotic home page"></c:param>
	 </c:url>
	 <h1><c:out value="${myUrl}"></c:out></h1>
	 <%-- <c:redirect url="index.html"></c:redirect> --%>
	 

</body>
</html>
