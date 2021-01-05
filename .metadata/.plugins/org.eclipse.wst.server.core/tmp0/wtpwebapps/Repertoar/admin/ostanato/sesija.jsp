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
	String korisnik = request.getParameter("korisnik");
	String lozinka = request.getParameter("lozinka");
	if (korisnik != null && korisnik.length() !=0){
		session.setAttribute("korisnik", korisnik);
		
	}else{
		response.sendRedirect("/Repertoar/admin/najava.jsp");
	}
%>
Dobredojde <%= korisnik %>,
<br />
<a href="proveriSesija.jsp">Klik</a>
</body>
</html>