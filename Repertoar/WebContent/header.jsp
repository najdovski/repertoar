<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*" %>

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
<link href="mdb/mdb.min.css" rel="stylesheet">

  <link rel="stylesheet" type="text/css" href="style.css">
  <link rel="shortcut icon" type="image/png" href="sliki/favicon.png"/>
  <title>Кино Репертоар</title>
  
</head>

<body>
<%
//novi formati za datum i vreme
SimpleDateFormat datum = new SimpleDateFormat("dd.MM.yyyy");
SimpleDateFormat vreme = new SimpleDateFormat("HH:mm");
%>
