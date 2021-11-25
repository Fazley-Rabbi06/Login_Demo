<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
</head>
<body>
	<%
	//prevent from back button after logout
	response.addHeader("Cache-Control","no-cache,no-store,must-revalidate");//Http 1.1
	response.setHeader("Pragma","no-cache"); //Http 1.0
	response.setHeader("Expires","0");//Proxy

	if (session.getAttribute("uname") == null)
		response.sendRedirect("login.jsp");
	%>
	Welcome ${uname}
	<br><br>
	<a href="video.jsp">Videos</a>
	<br><br>
	<form action="Logout"> 
		<input type="submit" value="Logout">
	</form>
</body>
</html>