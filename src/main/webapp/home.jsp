<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
	<%
	
		//response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		//response.setHeader("Pragma", "no-cache");
		//response.setHeader("Expires", "0");
		
		response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
		response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
		response.setHeader("Cache-Control","must-revalidate");
		response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
		response.setHeader("Pragma","no-cache");
		
		if(session.getAttribute("uname")==null){
			response.sendRedirect("login.jsp");
		}
	
	%>
	Hey ${uname} this is home page <br> 
	<a href = "catlog.jsp"><br><button>Catlog</button></a>
	
	<form action = "Logout" method = "post">
		<input type ="submit" value = "Logout">
	</form>
</body>
</html>