<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Video page</title>
</head>
<body>
	<%
	//prevent from back button after logout
	response.addHeader("Cache-Control", "no-cache,no-store,must-revalidate");//Http 1.1
	response.setHeader("Pragma", "no-cache"); //Http 1.0
	response.setHeader("Expires", "0");//Proxy

	if (session.getAttribute("uname") == null)
		response.sendRedirect("login.jsp");
	%>>
	<iframe width="560" height="315"
		src="https://www.youtube.com/embed/OuBUUkQfBYM"
		title="YouTube video player" frameborder="0"
		allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
		allowfullscreen></iframe>
</body>
</html>