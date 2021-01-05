<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- najava, socijalni ikoni, search bar pocetok--%>
<div class="container mt-3">

<div class="row">
<div class="col-12">

<%
Object promenliva_korisnik = session.getAttribute("korisnik");
if (promenliva_korisnik != null){
%>
<div class="float-left"> <a href="/Repertoar/admin" class="btn btn-unique"><span class="mr-2"><i class="fas fa-user"></i></span>Админ панел</a></div>
<%
}else{
	%>
		<div class="float-left"><a href="#" id="najava"><span class="b">Најави се</span></a>
		<form id="najava-skrij" action="Najava" method="POST">
		<input type="text" name="korisnik" class="form-control najava-pole my-1" placeholder="Корисничко име"></input>
		<input type="password" name="lozinka" class="form-control najava-pole" placeholder="Лозинка"></input>
		<button class="btn btn-unique najava-btn float-none">Најава</button>
		</form>
		</div>
					
	<%
}
%>


	<div class="float-right">
	<a href="http://fb.com" target="_new"><img src="sliki/fb.png" class="soc mt-2 mx-1 img-fluid"></a>
	<a href="http://twitter.com" target="_new"><img src="sliki/twitter.png" class="soc mt-2 mx-1 img-fluid"></a>
	<a href="http://instagram.com" target="_new"><img src="sliki/instagram.png" class="soc mt-2 mx-1 img-fluid"></a>


	<div class="float-right ml-3">
	
	<script>
var request=new XMLHttpRequest();
function searchInfo(){
var name=document.vinform.name.value;
var url="index.jsp?val="+name;

try{
request.onreadystatechange=function(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('mylocation').innerHTML=val;
}
}//end of function
request.open("GET",url,true);
request.send();
}catch(e){alert("Unable to connect to server");}
}
</script>
	<form action="prebaruvaj.jsp">
  	<input id="preb" name="tekst" class="form-control fas" type="text" placeholder="Пребарувај">
  	</form>
</div>
</div>
</div>
</div>
</div>
<%-- najava, socijalni ikoni, search bar kraj--%>   
    
<%-- navbar pocetok--%>
<nav class="navbar navbar-expand-md navbar-dark svetlo-sina my-3">
        <div class="container">
            <a class="navbar-brand" href="/Repertoar"><img class="img-fluid logo" src="sliki/logo.png"></a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a id="pocetna" class="nav-link active" href="/Repertoar">Почетна</a>
                    </li>
                    <li class="nav-item">
                        <a id="repertoar" class="nav-link" href="repertoar.jsp">Репертоар</a>
                    </li>
                    <li class="nav-item">
                        <a id="filmski-novosti" class="nav-link" href="novosti.jsp">Филмски Новости</a>
                    </li>
                    <li class="nav-item">
                        <a id="kontakt" class="nav-link" href="kontakt.jsp">Контакт</a>
                    </li>
                </ul>
            </div>
        </div>
</nav>
<%-- navbar kraj--%>