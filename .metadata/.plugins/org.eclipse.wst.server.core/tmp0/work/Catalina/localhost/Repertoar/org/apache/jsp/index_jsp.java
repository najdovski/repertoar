/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.41
 * Generated at: 2021-01-04 23:42:35 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(5);
    _jspx_dependants.put("/meni.jsp", Long.valueOf(1609803658712L));
    _jspx_dependants.put("/footer.jsp", Long.valueOf(1609803658719L));
    _jspx_dependants.put("/slajder.jsp", Long.valueOf(1609803658745L));
    _jspx_dependants.put("/header.jsp", Long.valueOf(1609803658718L));
    _jspx_dependants.put("/admin/zaednicki/konekcija-baza.jsp", Long.valueOf(1609803707555L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("java.util.Date");
    _jspx_imports_classes.add("java.sql.Statement");
    _jspx_imports_classes.add("java.text.SimpleDateFormat");
    _jspx_imports_classes.add("java.sql.DriverManager");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"UTF-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.7.0/css/all.css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link href=\"mdb/mdb.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\r\n");
      out.write("  <link rel=\"shortcut icon\" type=\"image/png\" href=\"sliki/favicon.png\"/>\r\n");
      out.write("  <title>Кино Репертоар</title>\r\n");
      out.write("  \r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");

//novi formati za datum i vreme
SimpleDateFormat datum = new SimpleDateFormat("dd.MM.yyyy");
SimpleDateFormat vreme = new SimpleDateFormat("HH:mm");

      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"container mt-3\">\r\n");
      out.write("\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("<div class=\"col-12\">\r\n");
      out.write("\r\n");

Object promenliva_korisnik = session.getAttribute("korisnik");
if (promenliva_korisnik != null){

      out.write("\r\n");
      out.write("<div class=\"float-left\"> <a href=\"/Repertoar/admin\" class=\"btn btn-unique\"><span class=\"mr-2\"><i class=\"fas fa-user\"></i></span>Админ панел</a></div>\r\n");

}else{
	
      out.write("\r\n");
      out.write("\t\t<div class=\"float-left\"><a href=\"#\" id=\"najava\"><span class=\"b\">Најави се</span></a>\r\n");
      out.write("\t\t<form id=\"najava-skrij\" action=\"Najava\" method=\"POST\">\r\n");
      out.write("\t\t<input type=\"text\" name=\"korisnik\" class=\"form-control najava-pole my-1\" placeholder=\"Корисничко име\"></input>\r\n");
      out.write("\t\t<input type=\"password\" name=\"lozinka\" class=\"form-control najava-pole\" placeholder=\"Лозинка\"></input>\r\n");
      out.write("\t\t<button class=\"btn btn-unique najava-btn float-none\">Најава</button>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t");

}

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"float-right\">\r\n");
      out.write("\t<a href=\"http://fb.com\" target=\"_new\"><img src=\"sliki/fb.png\" class=\"soc mt-2 mx-1 img-fluid\"></a>\r\n");
      out.write("\t<a href=\"http://twitter.com\" target=\"_new\"><img src=\"sliki/twitter.png\" class=\"soc mt-2 mx-1 img-fluid\"></a>\r\n");
      out.write("\t<a href=\"http://instagram.com\" target=\"_new\"><img src=\"sliki/instagram.png\" class=\"soc mt-2 mx-1 img-fluid\"></a>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"float-right ml-3\">\r\n");
      out.write("\t\r\n");
      out.write("\t<script>\r\n");
      out.write("var request=new XMLHttpRequest();\r\n");
      out.write("function searchInfo(){\r\n");
      out.write("var name=document.vinform.name.value;\r\n");
      out.write("var url=\"index.jsp?val=\"+name;\r\n");
      out.write("\r\n");
      out.write("try{\r\n");
      out.write("request.onreadystatechange=function(){\r\n");
      out.write("if(request.readyState==4){\r\n");
      out.write("var val=request.responseText;\r\n");
      out.write("document.getElementById('mylocation').innerHTML=val;\r\n");
      out.write("}\r\n");
      out.write("}//end of function\r\n");
      out.write("request.open(\"GET\",url,true);\r\n");
      out.write("request.send();\r\n");
      out.write("}catch(e){alert(\"Unable to connect to server\");}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("\t<form action=\"prebaruvaj.jsp\">\r\n");
      out.write("  \t<input id=\"preb\" name=\"tekst\" class=\"form-control fas\" type=\"text\" placeholder=\"Пребарувај\">\r\n");
      out.write("  \t</form>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("   \r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("<nav class=\"navbar navbar-expand-md navbar-dark svetlo-sina my-3\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <a class=\"navbar-brand\" href=\"/Repertoar\"><img class=\"img-fluid logo\" src=\"sliki/logo.png\"></a>\r\n");
      out.write("            <button class=\"navbar-toggler\" data-toggle=\"collapse\" data-target=\"#navbarNav\">\r\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("            </button>\r\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\r\n");
      out.write("                <ul class=\"navbar-nav ml-auto\">\r\n");
      out.write("                    <li class=\"nav-item\">\r\n");
      out.write("                        <a id=\"pocetna\" class=\"nav-link active\" href=\"/Repertoar\">Почетна</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"nav-item\">\r\n");
      out.write("                        <a id=\"repertoar\" class=\"nav-link\" href=\"repertoar.jsp\">Репертоар</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"nav-item\">\r\n");
      out.write("                        <a id=\"filmski-novosti\" class=\"nav-link\" href=\"novosti.jsp\">Филмски Новости</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"nav-item\">\r\n");
      out.write("                        <a id=\"kontakt\" class=\"nav-link\" href=\"kontakt.jsp\">Контакт</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("</nav>\r\n");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://n2o93bb1bwmn0zle.chr7pe7iynqr.eu-west-1.rds.amazonaws.com:3306/mupnvx906w6r0tjh?serverTimezone=Europe/Skopje&Unicode=true&characterEncoding=UTF-8";
String mysql_korisnik="fa5lzs5r14iy96wu";
String mysql_lozinka="oqabgljisyyian19";
Connection conn=DriverManager.getConnection(url,mysql_korisnik,mysql_lozinka);

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"slajder\" class=\"carousel slide\" data-ride=\"carousel\">\r\n");
      out.write("\r\n");
      out.write(" ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div class=\"carousel-inner\">\r\n");

String prazno = "";
String query_slajder="SELECT * FROM filmovi WHERE slika_slajder != '"+prazno+"' ORDER BY id DESC";
Statement slajder_stmt=conn.createStatement();
ResultSet sl=slajder_stmt.executeQuery(query_slajder);
while(sl.next())
{

//nov format za datum
String datumOdNov = datum.format(sl.getDate("datum_od"));
	

      out.write("\r\n");
      out.write("    <div class=\"carousel-item ");
      out.print(sl.getString("prvslajd"));
      out.write("\">\r\n");
      out.write("      <img class=\"d-block w-100\" src=\"");
      out.print(sl.getString("slika_slajder"));
      out.write("\" style=\"filter: brightness(75%)\">\r\n");
      out.write("      <div class=\"carousel-caption\">\r\n");
      out.write("        <p class=\"slider-naslov hidden-xs-up\">");
      out.print(sl.getString("ime"));
      out.write("</p>\r\n");
      out.write("        <p class=\"slider-godina hidden-xs-up\">");
      out.print(sl.getInt("godina"));
      out.write("</p>\r\n");
      out.write("        <p class=\"slider-datum hidden-xs-up\">На репертоар од <span class=\"b\">");
      out.print(datumOdNov);
      out.write("</span></p>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");

}
sl.close();
slajder_stmt.close();

      out.write("\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <a class=\"carousel-control-prev\" href=\"#slajder\" role=\"button\" data-slide=\"prev\">\r\n");
      out.write("    <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\r\n");
      out.write("    <span class=\"izbrisigoova-sr-only strelka\">&lsaquo;</span>\r\n");
      out.write("  </a>\r\n");
      out.write("  <a class=\"carousel-control-next\" href=\"#slajder\" role=\"button\" data-slide=\"next\">\r\n");
      out.write("    <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\r\n");
      out.write("    <span class=\"strelka\">&rsaquo;</span>\r\n");
      out.write("  </a>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"my-3 py-1 svetlo-sina najnovi-filmovi\">\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("<h3 class=\"my-1 podnaslov\"><span class=\"b\">Најнови</span> филмови</h3>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("\r\n");
 
String query_najnovi="SELECT * FROM filmovi ORDER BY id DESC LIMIT 3";
Statement najnovi_stmt=conn.createStatement();
ResultSet nn=najnovi_stmt.executeQuery(query_najnovi);
while(nn.next())
{

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<div class=\"col-4 col-md-4\">\r\n");
      out.write("<div class=\"card card-cascade narrower mb-4\">\r\n");
      out.write("      <div class=\"view view-cascade\">\r\n");
      out.write("        <img src=\"");
      out.print(nn.getString("slika_h"));
      out.write("\" class=\"card-img-top\">\r\n");
      out.write("        <a href=\"film.jsp?id=");
      out.print(nn.getString("id"));
      out.write("\">\r\n");
      out.write("          <div class=\"mask rgba-white-slight\"></div>\r\n");
      out.write("        </a>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"card-body card-body-cascade\">\r\n");
      out.write("        <h5 class=\"pink-text karticka-naslov\">");
      out.print(nn.getString("ime"));
      out.write("</h5>\r\n");
      out.write("\r\n");
      out.write("        <h4 class=\"card-title\">Жанр: <span class=\"b\">");
      out.print(nn.getString("zanr"));
      out.write("</span></h4>\r\n");
      out.write("  \r\n");
      out.write("        <p class=\"card-text\">");
      out.print(nn.getString("opis"));
      out.write("</p>\r\n");
      out.write("        <a href=\"film.jsp?id=");
      out.print(nn.getString("id"));
      out.write("\" class=\"btn btn-unique\"><span class=\"povekje\">Повеќе</span></a>\r\n");
      out.write("      </div>\r\n");
      out.write("  </div> \r\n");
      out.write("</div>\r\n");

}
nn.close();
najnovi_stmt.close();

      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<script src=\"https://code.jquery.com/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("$(\".card-text\").text(function(index, skratenTekst) {\r\n");
      out.write("return skratenTekst.substr(0, 165);\r\n");
      out.write("});\r\n");
      out.write("$(\".card-text\").append(\"...\");\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"mb-3 py-1 svetlo-sina najlajkuvani-filmovi\">\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("<h3 class=\"my-1 podnaslov\"><span class=\"b\">Најлајкувани</span> филмови</h3>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("\r\n");
 
String query_najlajkuvani="SELECT * FROM filmovi ORDER BY lajkovi DESC LIMIT 4";
Statement najlajkuvani_stmt=conn.createStatement();
ResultSet nl=najlajkuvani_stmt.executeQuery(query_najlajkuvani);
while(nl.next())
{

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"col-3\">\r\n");
      out.write("<div class=\"view overlay\">\r\n");
      out.write("  <img src=\"");
      out.print(nl.getString("slika_v"));
      out.write("\" class=\"img-fluid najlajkuvani-slika\">\r\n");
      out.write("  <a>\r\n");
      out.write("    <a href=\"film.jsp?id=");
      out.print(nl.getString("id"));
      out.write("\"><div class=\"mask\" style=\"border-radius:15px\"></div></a>\r\n");
      out.write("    <div class=\"sredina\">");
      out.print(nl.getString("ime"));
      out.write("</div>\r\n");
      out.write("    <div class=\"lajkoj\">");
      out.print(nl.getInt("lajkovi"));
      out.write(" <i class=\"fas fa-heart srce\"></i></div>\r\n");
      out.write("  </a>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");

}
nl.close();
najlajkuvani_stmt.close();
conn.close();

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<footer class=\"my-3 svetlo-sina\">\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("<h6 class=\"py-1\"><img src=\"sliki/logo-footer.png\" class=\"logo-footer\"> Кино Репертоар - Copyright 2019 ©</h6>\r\n");
      out.write("</div>\r\n");
      out.write("</footer>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("\t<script src=\"https://code.jquery.com/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("    <script type=\"text/javascript\" src=\"mdb/mdb.min.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"mdb/datatables.min.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("\t$(\".nav-item, .active\").removeClass(\"waves-effect waves-light\"); \r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("\t $('#najava').click(function(){\r\n");
      out.write("            $('#najava-skrij').slideToggle('slow');\r\n");
      out.write("        });   \r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("$(function() {\r\n");
      out.write("\t\r\n");
      out.write("\tif ($(\"#pocetna\").hasClass(\"active\")){\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\telse{\r\n");
      out.write("\t\tvar $podnaslov = $('.podnaslov').text();\r\n");
      out.write("\t\t$(\"title\").prepend($podnaslov + \" - \");\r\n");
      out.write("\t};\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script>$(document).ready(function () {\r\n");
      out.write("\t$('#dtBasicExample').DataTable();\r\n");
      out.write("\t$('.dataTables_length').addClass('bs-select');\r\n");
      out.write("\t});\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write('\r');
      out.write('\n');
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
