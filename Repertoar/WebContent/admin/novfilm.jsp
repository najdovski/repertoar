<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="zaednicki/konekcija-baza.jsp"%>
<%@include file="zaednicki/admin-header-meni.jsp"%>

<div class="col-12 my-3 py-1 svetlo-sina golemi-bukvi">
<div class="container">
<h3 class="ml-3 my-1 podnaslov">Додавање <span class="b">нов филм</span></h3>
</div>
</div>

<div class="container">
<div class="col-12">

<form action="../NovFilm" class="needs-validation" novalidate>

<div class="form-row">

    <div class="col-md-4 mb-3">
      <label for="naslov">Име:</label>
      <textarea rows="1" class="form-control" id="ime" name="ime" placeholder="Име" style="resize:none" required></textarea>
      <div class="invalid-feedback">
      Името е задолжително
      </div>
    </div>

    <div class="col-md-4 mb-3">
    <label for="slika_h">Хоризонтална слика:</label>
    <input type="text" class="form-control" id="slika_h" name="slika_h" placeholder="Линк до хоризонталната слика (420x270)" required>
    <div class="invalid-feedback">
    Хоризонталната слика е задолжителна
    </div>
    </div>
    
    <div class="col-md-4 mb-3">
    <label for="slika_h">Вертикална слика:</label>
    <input type="text" class="form-control" id="slika_v" name="slika_v" placeholder="Линк до вертикалната слика (400x600)" required>
    <div class="invalid-feedback">
    Вертикалната слика е задолжителна
    </div>
    </div>

  </div>



<div class="form-row">
    <div class="col-12 mb-3">
      <label for="opis">Опис:</label>
      <textarea class="form-control" rows="5" id="opis" name="opis" placeholder="Опис на филмот" required></textarea>
      <div class="invalid-feedback">
      Описот е задолжителен
      </div>
    </div>
</div>



<div class="form-row">

    <div class="col-md-4 mb-3">
      <label for="zanr">Жанр:</label>
      <input type="text" class="form-control" id="zanr" name="zanr" placeholder="Жанр/ови во кои припаѓа филмот" required>
      <div class="invalid-feedback">
      Жанрот е задолжителен
      </div>
    </div>

    <div class="col-md-4 mb-3">
    <label for="cena">Цена:</label>
    <input type="text" class="form-control" id="cena" name="cena" placeholder="Цена во денари" required>
    <div class="invalid-feedback">
    Цената е задолжителна
    </div>
    </div>
    
    <div class="col-md-4 mb-3">
	<label for="imdb">IMDb ID:</label>
	<input type="text" class="form-control" id="imdb" name="imdb" placeholder="IMDb ID на филмот (пр. „tt0111161“)" required>
	<div class="invalid-feedback">
	IMdB ID е задолжителен
	</div>
	</div>
</div>

<div class="form-row">

    <div class="col-md-4 mb-3">
    <label for="slajder-slika">Слика за слајдер:<small class="text-muted"> (Не е задолжително)</small></label>
    <input type="text" class="form-control" id="slika_slajder" name="slika_slajder" placeholder="Линк до сликата (1500x750)">
    </div>
    
    <div class="col-md-2 mb-3">
    <label for="godina">Година:</label>
    <input type="text" class="form-control" id="godina" name="godina" placeholder="Година на издавање" required>
    <div class="invalid-feedback">
    Годината е задолжителна
    </div>
    </div>
    
    <div class="col-md-2 mb-3">
    <label for="datum-od">Датум од:</label>
    <input type="date" class="form-control" id="datumOd" name="datumOd" placeholder="Почетен датум на проекциите" required>
    <div class="invalid-feedback">
    Почетниот датум е задолжителен
    </div>
    </div>
    
    <div class="col-md-2 mb-3">
    <label for="datum">Датум до:</label>
    <input type="date" class="form-control" id="datumDo" name="datumDo" placeholder="Краен датум на проекциите" required>
    <div class="invalid-feedback">
    Крајниот датум е задолжителен
    </div>
    </div>


    <div class="col-md-2 mb-3">
    <label for="cas">Час:</label>
    <input type="time" class="form-control" id="cas" name="cas" placeholder="Краен датум на проекциите" required>
    <div class="invalid-feedback">
    Часот е задолжителен
    </div>
    </div>
    
    
</div>


  <div class="form-row">
    <div class="col-md-12 text-right">
      <button class="btn btn-success">Зачувај</button>
    </div>
  </div>


  <%-- Validacija na formata --%>
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

</form> 
</div>
</div>

<%@include file="zaednicki/admin-footer.jsp"%>