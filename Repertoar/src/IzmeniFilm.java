import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/IzmeniFilm")
public class IzmeniFilm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		try {
			KonekcijaBaza izmeniFilm = new KonekcijaBaza();
			Connection conn = izmeniFilm.povrziSe();
	    	Statement stmt = conn.createStatement();
	    	
	    	
	    	String query_filmovi="SELECT * FROM filmovi";
	    	Statement filmovi=conn.createStatement();
	    	ResultSet rs=filmovi.executeQuery(query_filmovi);
	    	while(rs.next())
	    	{
	    	}
	    	
	    	String id = request.getParameter("id");
	    	String ime = request.getParameter("ime");
	    	String slika_h = request.getParameter("slika_h");
	    	String slika_v = request.getParameter("slika_v");
	    	String godina = request.getParameter("godina");
	    	String zanr = request.getParameter("zanr");
	    	String cena = request.getParameter("cena");
	    	String opis = request.getParameter("opis");
	    	String imdb = request.getParameter("imdb");
	    	//int lajkovi = 0;
	    	String slika_slajder = "";
	    	slika_slajder = request.getParameter("slika_slajder");
	    	String datumOd = request.getParameter("datumOd");
	    	String datumDo = request.getParameter("datumDo");
	    	String cas = request.getParameter("cas");
    	 	   
	    	
	    	stmt.executeUpdate("UPDATE filmovi SET ime = '"+ime+"' WHERE id='"+id+"'");
	    	stmt.executeUpdate("UPDATE filmovi SET slika_h = '"+slika_h+"' WHERE id='"+id+"'");
	    	stmt.executeUpdate("UPDATE filmovi SET slika_v = '"+slika_v+"' WHERE id='"+id+"'");
	    	stmt.executeUpdate("UPDATE filmovi SET godina = '"+godina+"' WHERE id='"+id+"'");
	    	stmt.executeUpdate("UPDATE filmovi SET zanr = '"+zanr+"' WHERE id='"+id+"'");
	    	stmt.executeUpdate("UPDATE filmovi SET cena = '"+cena+"' WHERE id='"+id+"'");
	    	stmt.executeUpdate("UPDATE filmovi SET opis = '"+opis+"' WHERE id='"+id+"'");
	    	stmt.executeUpdate("UPDATE filmovi SET imdb = '"+imdb+"' WHERE id='"+id+"'");
	    	//stmt.executeUpdate("UPDATE filmovi SET lajkovi = '"+lajkovi+"' WHERE id='"+id+"'");
	    	stmt.executeUpdate("UPDATE filmovi SET slika_slajder = '"+slika_slajder+"' WHERE id='"+id+"'");
	    	stmt.executeUpdate("UPDATE filmovi SET datum_od = '"+datumOd+"' WHERE id='"+id+"'");
	    	stmt.executeUpdate("UPDATE filmovi SET datum_do = '"+datumDo+"' WHERE id='"+id+"'");
	    	stmt.executeUpdate("UPDATE filmovi SET cas = '"+cas+"' WHERE id='"+id+"'");
	    	
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		//redirekt posle uspesen zapis
		 RequestDispatcher redirekt = request.getRequestDispatcher("/admin");
		 redirekt.forward (request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
