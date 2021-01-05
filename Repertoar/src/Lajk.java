import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Lajk")
public class Lajk extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		try {
			KonekcijaBaza lajk = new KonekcijaBaza();
			Connection conn = lajk.povrziSe();
	    	Statement stmt = conn.createStatement();
	    	
	    	Statement filmovi=conn.createStatement();
	    	ResultSet rs=filmovi.executeQuery("SELECT * FROM filmovi");
	    	while(rs.next())
	    	{
	    	}
	    	
	    	String id = request.getParameter("id");
	    	stmt.executeUpdate("UPDATE filmovi SET lajkovi = lajkovi+1 WHERE id='"+id+"'");
			 
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		String id = request.getParameter("id");

		//redirekt posle zapisan lajk
		 response.sendRedirect("film.jsp?id="+id+"");


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
