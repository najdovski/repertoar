<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if (session.getAttribute("korisnik") != null){
%>
sesijata e zacuvana
otepaj ja sesijata <a href="odjava.jsp">TUKA</a>
<%
}else{
	response.sendRedirect("/Repertoar/admin/najava.jsp");
	}
%>
</body>
</html>