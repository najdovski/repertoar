<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="header.jsp"%>
<%@include file="meni.jsp"%>
<%@include file="/admin/zaednicki/konekcija-baza.jsp"%>
<%@include file="slajder.jsp"%>


<%-- najnovi filmovi pocetok --%>
<div class="my-3 py-1 svetlo-sina najnovi-filmovi">
<div class="container">
<h3 class="my-1 podnaslov"><span class="b">Најнови</span> филмови</h3>
</div>
</div>
<div class="container">
<div class="row">

<% 
String query_najnovi="SELECT * FROM filmovi ORDER BY id DESC LIMIT 3";
Statement najnovi_stmt=conn.createStatement();
ResultSet nn=najnovi_stmt.executeQuery(query_najnovi);
while(nn.next())
{
%>
<%-- karticka 1 --%>
<div class="col-4 col-md-4">
<div class="card card-cascade narrower mb-4">
      <div class="view view-cascade">
        <img src="<%=nn.getString("slika_h")%>" class="card-img-top">
        <a href="film.jsp?id=<%=nn.getString("id")%>">
          <div class="mask rgba-white-slight"></div>
        </a>
      </div>

      <div class="card-body card-body-cascade">
        <h5 class="pink-text karticka-naslov"><%=nn.getString("ime")%></h5>

        <h4 class="card-title">Жанр: <span class="b"><%=nn.getString("zanr")%></span></h4>
  
        <p class="card-text"><%=nn.getString("opis")%></p>
        <a href="film.jsp?id=<%=nn.getString("id")%>" class="btn btn-unique"><span class="povekje">Повеќе</span></a>
      </div>
  </div> 
</div>
<%
}
nn.close();
najnovi_stmt.close();
%>

</div>
</div>

<%-- najnovi filmovi kraj --%>

<%-- JQuery --%>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
$(".card-text").text(function(index, skratenTekst) {
return skratenTekst.substr(0, 165);
});
$(".card-text").append("...");
</script>

<%-- najlajkuvani filmovi pocetok --%>
<div class="mb-3 py-1 svetlo-sina najlajkuvani-filmovi">
<div class="container">
<h3 class="my-1 podnaslov"><span class="b">Најлајкувани</span> филмови</h3>
</div>
</div>



<div class="container">
<div class="row">

<% 
String query_najlajkuvani="SELECT * FROM filmovi ORDER BY lajkovi DESC LIMIT 4";
Statement najlajkuvani_stmt=conn.createStatement();
ResultSet nl=najlajkuvani_stmt.executeQuery(query_najlajkuvani);
while(nl.next())
{
%>

<%-- Najlajkuvani 1 --%>
<div class="col-3">
<div class="view overlay">
  <img src="<%=nl.getString("slika_v")%>" class="img-fluid najlajkuvani-slika">
  <a>
    <a href="film.jsp?id=<%=nl.getString("id")%>"><div class="mask" style="border-radius:15px"></div></a>
    <div class="sredina"><%=nl.getString("ime")%></div>
    <div class="lajkoj"><%=nl.getInt("lajkovi")%> <i class="fas fa-heart srce"></i></div>
  </a>
</div>
</div>

<%
}
nl.close();
najlajkuvani_stmt.close();
conn.close();
%>





</div>
</div>
<%-- najlajkuvani filmovi kraj --%>



<%@include file="footer.jsp"%>
