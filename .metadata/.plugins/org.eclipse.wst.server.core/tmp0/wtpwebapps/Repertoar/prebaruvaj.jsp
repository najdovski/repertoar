<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="meni.jsp"%>
<%@include file="/admin/zaednicki/konekcija-baza.jsp"%>



<div class="my-3 py-1 svetlo-sina najnovi-filmovi">
<div class="container">
<h3 class="my-1 podnaslov">Резултати од <span class="b">пребарувањето</span></h3>
</div>
</div>



<div class="container">

<% 
String film_id = request.getParameter("id");
String prebaruvanje = request.getParameter("tekst");
String query_film="SELECT * FROM filmovi WHERE opis LIKE '%"+prebaruvanje+"%' OR ime LIKE '%"+prebaruvanje+"%' OR zanr LIKE '%"+prebaruvanje+"%'";    
Statement film_stmt=conn.createStatement();
ResultSet film=film_stmt.executeQuery(query_film);
while(film.next())
{
	String datumOdNov = datum.format(film.getDate("datum_od"));
	String datumDoNov = datum.format(film.getDate("datum_do"));
	String casNov = vreme.format(film.getTime("cas"));
%>
<div class="row">

<div class="col-2">
<div class="view overlay">
  <img src="<%=film.getString("slika_h")%>" class="img-fluid najlajkuvani-slika">
  <a href="film.jsp?id=<%=film.getInt("id")%>">
    <div class="mask" style="border-radius:15px"></div>
  </a>
</div>
</div>

<div class="col-3">
<a href="film.jsp?id=<%=film.getInt("id")%>" class="bel-link"><h5>„<%=film.getString("ime")%>“ - <span class="b"><%=film.getInt("godina")%></span></h5></a>
<span style="font-size:small">Жанр/ови: <span class="b"><%=film.getString("zanr")%></span></span> <br />
<span style="font-size:small">Термини: <span class="b"><%=datumOdNov%></span> - <span class="b"><%=datumDoNov%></span>, <span class="b"><%=casNov%> ч.</span></span> 

<br />
<span style="font-size:small">Цена: <span class="b"><%=film.getInt("cena")%> ден.</span></span> <br />
</div>


<div class="col-7">

<span style="font-size:small"><%=film.getString("opis")%></span>
</div>
</div>
<hr style="background:gray"/>
<%
}
film.close();
film_stmt.close();
%>

</div>


<%-- JQuery --%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>  
<%--  aktivna klasa vo menito --%>  
<script>
$(function() {
		$("#pocetna").removeClass("active");
        $("#repertoar").addClass("active");
    });
</script>

<%@include file="footer.jsp"%>
