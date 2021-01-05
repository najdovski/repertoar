<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="zaednicki/konekcija-baza.jsp"%>
<%@include file="zaednicki/admin-header-meni.jsp"%>


<div class="col-12 my-3 py-1 svetlo-sina golemi-bukvi">
<div class="container">
<h3 class="ml-3 my-1 podnaslov">Листа <span class="b">на филмови</span></h3>
</div>
</div>

<div class="col-12">
<%-- <div class="container"> </div>--%>
<table class="table admin-tabela-listanje">
    <thead>
        <tr>
            <th>#</th>
            <th>Слика</th>
            <th>Име</th>
            <th>Година</th>
            <th>Жанр</th>
            <th>Цена</th>
            <th>Опис</th>
            <th>IMDb</th>
            <th>Проекции</th>
            <th>Лајкови</th>
            <th>Слајдер</th>
            <th>Операции</th>
        </tr>
    </thead>
    <tbody>
    
<%
String query_filmovi="SELECT * FROM filmovi ORDER BY id DESC";
Statement filmovi=conn.createStatement();
ResultSet rs=filmovi.executeQuery(query_filmovi);
while(rs.next())
{
	String datumOdNov = datum.format(rs.getDate("datum_od"));
	String datumDoNov = datum.format(rs.getDate("datum_do"));
	String casNov = vreme.format(rs.getTime("cas"));
%>

        <tr>
            <th scope="row"><%=rs.getInt("id")%></th>
            <td><a href="../film.jsp?id=<%=rs.getInt("id")%>"><img src="<%=rs.getString("slika_v")%>" height="80px"></a></td>
    		<td><a href="../film.jsp?id=<%=rs.getInt("id")%>" style="color:white"><%=rs.getString("ime")%></a></td>
    		<td><%=rs.getInt("godina")%></td>
    		<td><%=rs.getString("zanr")%></td>
            <td><%=rs.getInt("cena")%></td>
            <td><textarea rows="4" readonly><%=rs.getString("opis")%></textarea></td>
            <td><a style="color:#e91e63" target="_blank" href="https://www.imdb.com/title/<%=rs.getString("imdb")%>"><%=rs.getString("imdb")%></a></td>
            <td>Од: <span class="b"><%=datumOdNov%></span> <br /> До: <span class="b"><%=datumDoNov%></span> <br /> Во <span class="b"><%=casNov%> ч.</span></td>
            <td><%=rs.getInt("lajkovi")%></td>
            <td><img src="<%=rs.getString("slika_slajder")%>" height="40px"></td>
            <td>
                <a href="/admin/izmenifilm.jsp?id=<%=rs.getInt("id")%>" class="blue-text"><i class="fa fa-edit"></i>
                
                </a> <a href="/IzbrisiFilm?id=<%=rs.getInt("id")%>" class="red-text"><i class="fa fa-times"></i></a>
            </td>
        </tr>
<%
}
%>
	</tbody>
	</table>
<%
rs.close();
filmovi.close();
conn.close();
%>
</div>

<%-- JQuery --%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>  

<%@include file="zaednicki/admin-footer.jsp"%>