<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:___DATABASE_HOST:PORT___/___DATABASE_NAME___?serverTimezone=Europe/Skopje&Unicode=true&characterEncoding=UTF-8";
String mysql_korisnik="___DATABASE_USER___";
String mysql_lozinka="___DATABASE_PASSWORD___";
Connection conn=DriverManager.getConnection(url,mysql_korisnik,mysql_lozinka);
%>