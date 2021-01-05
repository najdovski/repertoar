<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <title>Филмски Репертоар</title>
</head>

<body>

<%-- socijalni ikoni, search bar pocetok--%>
<div class="container mt-3">
	<div class="row">





<div class="col-12">



<div class="float-right">
	<a href="http://fb.com" target="_new"><img src="../sliki/fb.png" class="soc mt-2 mx-1 img-fluid"></a>
	<a href="http://twitter.com" target="_new"><img src="../sliki/twitter.png" class="soc mt-2 mx-1 img-fluid"></a>
	<a href="http://instagram.com" target="_new"><img src="../sliki/instagram.png" class="soc mt-2 mx-1 img-fluid"></a>


	<div class="float-right ml-3">
  	<input id="preb" class="form-control fas" type="text" placeholder="&#xf002">
</div>
</div>
</div>
</div>
</div>
<%-- najava, socijalni ikoni, search bar kraj--%>
   
    
<%-- navbar pocetok--%>
<nav class="navbar navbar-expand-md navbar-dark svetlo-sina my-3">
        <div class="container">
            <a class="navbar-brand" href="/Repertoar"><img class="img-fluid logo" src="../sliki/logo.png"></a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Почетна</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Репертоар</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Купи карта</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Контакт</a>
                    </li>
                </ul>
            </div>
        </div>
</nav>
<%-- navbar kraj--%>