<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dummy Page</title>
</head>
<body>

	<h3>Success Page</h3>
	<%
		response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
	
		if(request.getSession().getAttribute("username")==null)
		{
			request.setAttribute("Error", "Session has ended.  Please login.");
			response.sendRedirect("/");
		}
	
	%>
	Welcome, ${sessionScope.username }
	<br>
	<a href="${pageContext.request.contextPath }/logout">Logout</a>
</body>
</html>

