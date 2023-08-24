<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>this is for function tags</h1>
	<c:set var="name" value="THIS IS WEBOSMOTIC"></c:set>
	<h1><c:out value="${name }"></c:out></h1>
	<h1>length of name is:<c:out value="${fn:length(name) }"></c:out> </h1>
	<h1><c:out value="${fn:toLowerCase(name) }"></c:out> </h1><br>
	<h1><c:out value="${fn:contains(name,'WEBOSMOTIC') }"></c:out> </h1>
</body>
</html>