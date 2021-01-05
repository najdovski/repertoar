<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- slajder pocetok--%>

<div id="slajder" class="carousel slide" data-ride="carousel">

 <%-- 
 <ol class="carousel-indicators">
    <li data-target="#slajder" data-slide-to="0" class="active"></li>
    <li data-target="#slajder" data-slide-to="1"></li>
    <li data-target="#slajder" data-slide-to="2"></li>
  </ol>
  --%>

    <div class="carousel-inner">
<%
String prazno = "";
String query_slajder="SELECT * FROM filmovi WHERE slika_slajder != '"+prazno+"' ORDER BY id DESC";
Statement slajder_stmt=conn.createStatement();
ResultSet sl=slajder_stmt.executeQuery(query_slajder);
while(sl.next())
{

//nov format za datum
String datumOdNov = datum.format(sl.getDate("datum_od"));
	
%>
    <div class="carousel-item <%=sl.getString("prvslajd")%>">
      <img class="d-block w-100" src="<%=sl.getString("slika_slajder")%>" style="filter: brightness(75%)">
      <div class="carousel-caption">
        <p class="slider-naslov hidden-xs-up"><%=sl.getString("ime")%></p>
        <p class="slider-godina hidden-xs-up"><%=sl.getInt("godina")%></p>
        <p class="slider-datum hidden-xs-up">На репертоар од <span class="b"><%=datumOdNov%></span></p>
      </div>
    </div>
<%
}
sl.close();
slajder_stmt.close();
%>
  </div>

  <a class="carousel-control-prev" href="#slajder" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="izbrisigoova-sr-only strelka">&lsaquo;</span>
  </a>
  <a class="carousel-control-next" href="#slajder" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="strelka">&rsaquo;</span>
  </a>
</div>

<%-- slajder kraj--%>

