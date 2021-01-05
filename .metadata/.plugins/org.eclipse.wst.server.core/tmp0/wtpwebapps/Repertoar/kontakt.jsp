<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="header.jsp"%>
<%@include file="meni.jsp"%>
<%@include file="/admin/zaednicki/konekcija-baza.jsp"%>


<%@ page import="com.javapapers.java.mail.JavaEmail"%>
<%@ page import="javax.mail.MessagingException"%>


<%
	request.setCharacterEncoding("UTF-8");
	String ispisi = null;
	String status = null;
	if (request.getParameter("isprati") != null) {
		JavaEmail javaEmail = new JavaEmail();
		javaEmail.setMailServerProperties();
		
		String naslov = request.getParameter("naslov");
		String sodrzina = "";
		if (request.getParameter("ime") != null) {
			sodrzina = "Име на испраќачот: " + request.getParameter("ime")
					+ "<br>";
		}
		if (request.getParameter("email") != null) {
			sodrzina = sodrzina + "Email адреса на испраќачот: "
					+ request.getParameter("email") + "<br>";
		}
		if (request.getParameter("naslov") != null) {
			sodrzina = sodrzina + "Наслов на пораката: "
					+ request.getParameter("naslov") + "<br>";
		}
		if (request.getParameter("prasanje") != null) {
			sodrzina = sodrzina + "Порака: " + request.getParameter("prasanje")
					+ "<br>";
		}
		javaEmail.kreiranjePoraka(naslov, sodrzina);
		try {
			javaEmail.sendEmail();
			status = "success";
			ispisi = "Прашањето е испратено. Ви благодариме";
		} catch (MessagingException me) {
			status = "error";
			ispisi = "Прашањето не е испратено, обидете се повторно";
		}
	}
%>

<div class="my-3 py-1 svetlo-sina najnovi-filmovi">
<div class="container">
<h3 class="my-1 podnaslov"><span class="b">Контакт</span></h3>
</div>
</div>



<div class="container">
<div class="row">
<div class="col-9">

<form id="frmContact" name="frmContact" action="" method="POST" class="needs-validation" novalidate>

<div class="form-row">

    <div class="col-md-6 mb-3">
      <label for="naslov">Име:</label>
      <textarea rows="1" class="form-control" id="ime" name="ime" placeholder="Име" style="resize:none" required></textarea>
      <div class="invalid-feedback">
      Името е задолжително
      </div>
    </div>

    <div class="col-md-6 mb-3">
    <label for="slika_h">E-mail адреса:</label>
    <input type="text" class="form-control" id="email" name="email" placeholder="Вашата e-mail адреса" required>
    <div class="invalid-feedback">
    E-mail адресата е задолжителна
    </div>
    </div>


  </div>

<div class="form-row">
<div class="col-12 mb-3">

    <label for="slika_h">Наслов</label>
    <input type="text" class="form-control" id="naslov" name="naslov" placeholder="Наслов на прашањето (Subject)" required>
    <div class="invalid-feedback">
    Насловот е задолжителен
    </div>
</div>
</div>

<div class="form-row">
    <div class="col-12 mb-3">
      <label for="opis">Прашање:</label>
      <textarea class="form-control" rows="5" id="prasanje" name="prasanje" placeholder="Вашето прашање" required></textarea>
      <div class="invalid-feedback">
     Прашањето е задолжително
      </div>
    </div>
</div>


  <div class="form-row">
    <div class="col-md-12 text-left">
    <button class="btn btn-success" name="isprati">Испратете</button>
    </div>
  </div>


  <%-- Front-end validacija --%>
  <script>
(function() {
  'use strict';
  window.addEventListener('load', function() {
    var forms = document.getElementsByClassName('needs-validation');
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>


<%-- Back-end validacija --%>
<%
if (null != ispisi) {
	out.println("<div class='" + status + "'>" + ispisi + "</div>");
}
%>
</form> 


</div>


<div class="col-3 kontakt-detali">

<div class="mt-4">
<i class="fas fa-map-marker-alt ikonce"></i>
</div>
<div>
<br />
<span class="b">Партизанска Б.Б. - </span> 7000 Битола
<hr />
</div>

<div class="mt-4">
<i class="fas fa-phone ikonce"></i>
</div>
<div>
<br />
<span class="b">047/</span>232-998
<hr />
</div>

<div class="mt-4">
<i class="fas fa-envelope ikonce"></i>
</div>
<div>
<br />
<span class="b">filmskirepertoar@gmail.com</span>
</div>
</div>


</div>



<div class="row mt-5">
<div class="col-12">
<iframe class="kontakt-mapa" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2128.442915035306!2d21.32513756454765!3d41.023662391008!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x238c9445a1424717!2sFaculty+of+Information+and+Communication+Technologies!5e0!3m2!1sen!2smk!4v1554632649217!5m2!1sen!2smk" width="100%"></iframe></div>
</div>
</div>

<%-- JQuery --%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>  
<%--  aktivna klasa vo menito --%>  
<script>
$(function() {
		$("#pocetna").removeClass("active");
        $("#kontakt").addClass("active");
    });
</script>



<%@include file="footer.jsp"%>
