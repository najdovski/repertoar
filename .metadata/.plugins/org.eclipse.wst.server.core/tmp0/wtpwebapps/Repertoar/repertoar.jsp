<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="header.jsp"%>
<%@include file="meni.jsp"%>
<%@include file="/admin/zaednicki/konekcija-baza.jsp"%>


<%-- MDBootstrap Datatables  --%>
<link href="mdb/datatables.min.css" rel="stylesheet">


<div class="col-12 my-3 py-1 svetlo-sina golemi-bukvi">
<div class="container">
<h3 class="ml-3 my-1 podnaslov"><span class="b">Репертоар</span></h3>
</div>
</div>


<div class="row col-12">
<div class="container">

<table id="dtBasicExample" class="table table-striped repertoar-tabela table-sm" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th class="th-sm b">Слика
      </th>
      <th class="th-sm b">Име
      </th>
      <th class="th-sm b">Почетен датум
      </th>
      <th class="th-sm b">Краен датум
      </th>
      <th class="th-sm b">Време
      </th>
      <th class="th-sm b">Цена
      </th>
    </tr>
  </thead>
  <tbody>
  
 <% 
String query_rep="SELECT * FROM filmovi ORDER BY id DESC";
Statement rep_stmt=conn.createStatement();
ResultSet rep=rep_stmt.executeQuery(query_rep);
while(rep.next())
{
String datumOdNov = datum.format(rep.getDate("datum_od"));
String datumDoNov = datum.format(rep.getDate("datum_do"));
String casNov = vreme.format(rep.getTime("cas"));
%>
 
    <tr>
      <td width="12%"> <a href="film.jsp?id=<%=rep.getInt("id")%>"> <img src="<%=rep.getString("slika_h")%>" class="repertoar-slika"> </a></td>
      <td><a href="film.jsp?id=<%=rep.getInt("id")%>" style="color:#e91e63">  <%=rep.getString("ime")%>  </a></td>
      <td><%=datumOdNov%></td>
      <td><%=datumDoNov%></td>
      <td><%=casNov%> ч.</td>
      
      <td><%=rep.getInt("cena")%> ден.
      </td>
      
    </tr>
    
 <%
}
%>   

  </tbody>
</table>



</div>
</div>
<%
rep.close();
rep_stmt.close();
conn.close();
%>
<%-- najnovi filmovi kraj --%>



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
