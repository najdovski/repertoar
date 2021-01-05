<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@include file="zaednicki/nenajaven-header-meni.jsp"%>


<div class="container">
<div class="row row d-flex justify-content-center text-center">
<h2><span class="b">Админ</span> мени најава</h2>
<div class="col-12">
<form action="../Najava" method="POST" style="display:inline-block">
		<input type="text" name="korisnik" class="form-control najava-pole my-1" placeholder="Корисничко име"></input>
		<input id="lozinka" type="password" name="lozinka" class="form-control najava-pole" placeholder="Лозинка"></input>
		<button class="btn btn-success najava-btn float-none">Најава</button>
</form>
</div>	
</div>
</div>

		
		
<%-- footer --%>
<footer class="my-3 svetlo-sina">
<div class="container">
<h6 class="py-1"><img src="../sliki/logo-footer.png" class="logo-footer"> Филмски Репертоар - Copyright 2019 ©</h6>
</div>
</footer>
<%-- footer kraj --%>



<%-- JQuery --%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<%-- Tooltips --%>
<%-- <script type="text/javascript" src="https://mdbootstrap.com/previews/docs/latest/js/popper.min.js"></script> --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

<%-- Bootstrap core JavaScript --%>
<%-- MDB core JavaScript --%>
<%-- <script type="text/javascript" src="https://mdbootstrap.com/previews/docs/latest/js/mdb.min.js"></script> --%>
<script type="text/javascript" src="../mdb/mdb.min.js"></script>
</body>
</html>