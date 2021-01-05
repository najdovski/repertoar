import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.SQLException; 
public class KonekcijaBaza { 
	public Connection povrziSe() throws SQLException, ClassNotFoundException
    {
    	Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:___DATABASE_HOST:PORT___/___DATABASE_NAME___?serverTimezone=Europe/Skopje&Unicode=true&characterEncoding=UTF-8";
			String mysql_korisnik="___DATABASE_USER___";
			String mysql_lozinka="___DATABASE_PASSWORD___";
    	Connection conn=DriverManager.getConnection(url,mysql_korisnik,mysql_lozinka);
    	return conn; 
    }
}
