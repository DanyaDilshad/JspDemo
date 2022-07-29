<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Catlog</title>
</head>
<body>

	<%
			
	response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
	response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
	response.setHeader("Cache-Control","must-revalidate");
	response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
	response.setHeader("Pragma","no-cache");
	
		if(session.getAttribute("uname")==null){
			response.sendRedirect("login.jsp");
		}
	
	%>

	<h1>Catlog Page</h1>
	<img src="https://i.pinimg.com/originals/fa/db/91/fadb91e66b07aceca36faf3cb1e28d1b.jpg" alt="Girls Fashion" width="400" >
</body>
</html>