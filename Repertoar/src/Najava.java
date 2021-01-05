import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Najava")
public class Najava extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		String korisnik = request.getParameter("korisnik");
		String lozinka = request.getParameter("lozinka");
		
		try {
			KonekcijaBaza najava = new KonekcijaBaza();
			Connection conn = najava.povrziSe();
			
	    	//Se koristi PreparedStatement na mestoto na Statement, za zastita od sql injection
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM korisnici WHERE korisnik = ? AND lozinka = ?");
			stmt.setString(1, korisnik);
			stmt.setString(2, lozinka);
			
			//sql injection ranliv kod od prethodno
			//Statement stmt = con.createStatement();
			//ResultSet rs = stmt.executeQuery("SELECT * FROM korisnici WHERE korisnik = '"+korisnik+"' AND lozinka = '"+lozinka+"' ");
			
			ResultSet rs = stmt.executeQuery();
		
		if (rs.next()) {
			HttpSession session = request.getSession();
			session.setAttribute("korisnik", korisnik);
			response.sendRedirect("/admin");
			
		}
		else {
			response.sendRedirect("/admin/najava.jsp");
		}
		
		
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	
	
		
	}
}
