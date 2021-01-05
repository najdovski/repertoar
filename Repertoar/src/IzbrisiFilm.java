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

@WebServlet("/IzbrisiFilm")
public class IzbrisiFilm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		try {
			KonekcijaBaza izbrisiFilm = new KonekcijaBaza();
			Connection conn = izbrisiFilm.povrziSe();
	    	Statement stmt = conn.createStatement();

	    
	    	String id = request.getParameter("id");
	    	stmt.executeUpdate("DELETE FROM filmovi WHERE id='"+id+"'");
	    	
	    	
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		//redirekt posle brisenje
		 RequestDispatcher redirekt = request.getRequestDispatcher("/admin");
		 redirekt.forward (request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
