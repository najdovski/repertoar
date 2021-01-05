<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://n2o93bb1bwmn0zle.chr7pe7iynqr.eu-west-1.rds.amazonaws.com:3306/mupnvx906w6r0tjh?serverTimezone=Europe/Skopje&Unicode=true&characterEncoding=UTF-8";
String mysql_korisnik="fa5lzs5r14iy96wu";
String mysql_lozinka="oqabgljisyyian19";
Connection conn=DriverManager.getConnection(url,mysql_korisnik,mysql_lozinka);
%>