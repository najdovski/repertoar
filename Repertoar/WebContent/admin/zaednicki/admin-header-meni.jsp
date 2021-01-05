<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%
String korisnik = request.getParameter("korisnik");
String lozinka = request.getParameter("lozinka");


Object promenliva_korisnik = session.getAttribute("korisnik");
if (promenliva_korisnik != null){
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

<%-- Font Awesome --%>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">

<%-- Bootstrap core CSS --%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">

<%-- Material Design Bootstrap --%>
<link href="../mdb/mdb.min.css" rel="stylesheet">

  <link rel="stylesheet" type="text/css" href="../style.css">
  <link rel="shortcut icon" type="image/png" href="../sliki/favicon.png"/>
  <title>Админ панел</title>
</head>

<body>



<nav class="col-12 navbar navbar-expand-md navbar-dark svetlo-sina my-3">
        <div class="container">
        
<%

//novi formati za datum i vreme
SimpleDateFormat datum = new SimpleDateFormat("dd.MM.yyyy");
SimpleDateFormat vreme = new SimpleDateFormat("HH:mm");

String query_pozdrav="SELECT * FROM korisnici WHERE korisnik = '"+promenliva_korisnik+"' ";
Statement pozdrav_statement=conn.createStatement();
ResultSet pozdrav=pozdrav_statement.executeQuery(query_pozdrav);

while(pozdrav.next()){
	

%>
<a class="navbar-brand" href="../index.jsp">Добредојде, <span class="b"> <%=pozdrav.getString("ime")%></span></a>
<%
}
    pozdrav.close();
    pozdrav_statement.close();

%>         
  
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                 <li class="nav-item">
                        <a class="btn btn-primary" href="index.jsp">Листа на филмови</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-primary" href="novfilm.jsp">Нов филм</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-unique" href="../Odjava">Одјави се</a>
                    </li>
                </ul>
            </div>
        </div>
</nav>