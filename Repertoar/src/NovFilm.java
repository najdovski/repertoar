import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/NovFilm")
public class NovFilm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		try {
			KonekcijaBaza novFilm = new KonekcijaBaza();
			Connection conn = novFilm.povrziSe();
	    	Statement stmt = conn.createStatement();

	    	//id e NULL za auto increment
	    	String ime = request.getParameter("ime");
	    	String slika_h = request.getParameter("slika_h");
	    	String slika_v = request.getParameter("slika_v");
	    	String godina = request.getParameter("godina");
	    	String zanr = request.getParameter("zanr");
	    	String cena = request.getParameter("cena");
	    	String opis = request.getParameter("opis");
	    	String imdb = request.getParameter("imdb");
	    	int lajkovi = 0;
	    	String slika_slajder = "";
	    	slika_slajder = request.getParameter("slika_slajder");
	    	String datumOd = request.getParameter("datumOd");
	    	String datumDo = request.getParameter("datumDo");
	    	String cas = request.getParameter("cas");
	    	String prvslajd = "";
	    	
    	 	    	 
	    	stmt.executeUpdate("INSERT INTO filmovi VALUES (NULL, '"+ime+"', '"+slika_h+"', '"+slika_v+"', '"+godina+"', '"+zanr+"', '"+cena+"', '"+opis+"', '"+imdb+"', '"+lajkovi+"', '"+slika_slajder+"', '"+datumOd+"', '"+datumDo+"', '"+cas+"', '"+prvslajd+"')");
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
