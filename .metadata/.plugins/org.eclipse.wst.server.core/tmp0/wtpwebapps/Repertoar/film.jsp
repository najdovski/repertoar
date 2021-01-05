<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="header.jsp"%>
<%@include file="meni.jsp"%>
<%@include file="/admin/zaednicki/konekcija-baza.jsp"%>

<% 
String film_id = request.getParameter("id");
String query_film="SELECT * FROM filmovi WHERE id = '"+film_id+"'";
Statement film_stmt=conn.createStatement();
ResultSet film=film_stmt.executeQuery(query_film);
while(film.next())
{
%>

<div class="my-3 py-1 svetlo-sina najnovi-filmovi">
<div class="container">
<h3 class="my-1 podnaslov"><%=film.getString("ime")%></h3>
</div>
</div>
<div class="container">
<div class="row">


<div class="col-4">
<div class="view overlay">
  <img src="<%=film.getString("slika_v")%>" class="img-fluid najlajkuvani-slika">
  <a>
    <div class="mask" style="border-radius:15px"></div>
  </a>
</div>
</div>


<div class="col-6">

<div class="mb-2"><div class="film">Година на издавање:</div> <br /><span class="b"><%=film.getInt("godina")%></span></div>

<div class="mb-2"><div class="film">Жанр/ови: </div><br /><span class="b"><%=film.getString("zanr")%></span></div>

<div class="mb-2"><div class="film">Цена: </div><br /><span class="b"><%=film.getInt("cena")%> ден.</span></div>

<div class="mb-2"><div class="film opis">Опис/содржина: </div><br /><%=film.getString("opis")%></div>

<div class="mb-2"><div class="film">Закажани проекции: </div><br />



<%
String datumOdNov = datum.format(film.getDate("datum_od"));
String datumDoNov = datum.format(film.getDate("datum_do"));
String casNov = vreme.format(film.getTime("cas"));
%>


Од: <span class="b"><%=datumOdNov%></span> <br />
До: <span class="b"><%=datumDoNov%></span> <br />
Во: <span class="b"><%=casNov%> ч.</span></div>

<div class="mb-2"><div class="film">Лајкови: </div><br /><span class="b"><%=film.getInt("lajkovi")%></span></div>

<a id="imdb" class="mb-2"><span class="b"> <span style="color:#e4bb24">IMDb</span> информации: <i class="fas fa-sort-down"></i></span> <div id="imdb-skrieno" style="display:none"></div> </a>

</div>


<div class="col-2 text-center">


<div>
<a href="Lajk?id=<%=film_id%>">
<i class="fas fa-heart lajk"></i>
<br />
<div class="mask"></div>
<span class="b" style="color:white">Лајкни ме!</span>
</a>
</div>

<div class="my-4">
<a href="https://www.facebook.com/sharer/sharer.php?u=http%3A//localhost%3A8082/Repertoar/film.jsp?id=<%=film_id%>" target="_blank">
<i class="fab fa-facebook fb"></i>
<br />
<span class="b boja">Сподели ме!</span>
</a>
</div>

<div class="my-4">
<a href="https://twitter.com/home?status=http%3A//localhost%3A8082/Repertoar/film.jsp?id=<%=film_id%>" target="_blank">
<i class="fab fa-twitter twt"></i>
<br />
<span class="b boja">Твитни ме!</span>
</a>
</div>
</div>

</div>
<%-- JQuery --%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>  

<%-- imdb api --%>
<script>
$(function(){
	var URL = 'http://www.omdbapi.com/?i=<%=film.getString("imdb")%>&apikey=c7092a72';
	$.getJSON(URL).done(function (film){
		console.log(film);
		$("#imdb-skrieno").append("<div> Оригинален наслов: <span class='b'> „" + film.Title + "“</span></div>" );
		$("#imdb-skrieno").append("<div class='mt-2'> Жанр/ови: <span class='b'>" + film.Genre + "</span></div>" );
		$("#imdb-skrieno").append("<div class='mt-2'> Режија: <span class='b'>" + film.Director + "</span></div>" );
		$("#imdb-skrieno").append("<div class='mt-2'> Главни улоги: <span class='b'>" + film.Actors + "</span></div>" );
		$("#imdb-skrieno").append("<div class='mt-2'> Содржина: <span class='b' style='font-size:small'>„" + film.Plot + "“</span></div>" );
		$("#imdb-skrieno").append("<div class='mt-2'> Јазик: <span class='b'>" + film.Language + "</span></div>" );
		$("#imdb-skrieno").append("<div class='mt-2'> Земја: <span class='b'>" + film.Country + "</span></div>" );
		$("#imdb-skrieno").append("<div class='mt-2'> <i class='fab fa-imdb fa-3x' style='color:#e4bb24'></i> оценка: <span class='b' style='font-size:2em; color:#e4bb24' >" + film.imdbRating + "/10</span></div>" );
	}).fail(function(){
	  console.log("ne e povrzano omdb api-to");
	});
	});
</script>

<script>
$('#imdb').click(function(){
          $('#imdb-skrieno').slideToggle('slow');
 });   
</script>


<%
}
film.close();
film_stmt.close();
conn.close();
%>

</div>
</div>



<%--  aktivna klasa vo menito --%>  
<script>
$(function() {
		$("#pocetna").removeClass("active");
        $("#repertoar").addClass("active");
    });
</script>





<%@include file="footer.jsp"%>
