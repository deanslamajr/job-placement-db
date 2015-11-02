// Class QueriesDemo.java
// 
// Demonstrates queries performed on a freshly initialized Oracle Database
//
// ----------------
//
// How to compile from command line:
// javac -cp ".\ojdbc7.jar;." QueriesDemo.java
//
// How to execute from command line:
// java -cp ".\ojdbc7.jar;." QueriesDemo <db-login-name> <db-password>


import java.sql.*;
import oracle.jdbc.pool.OracleDataSource;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.swing.JFrame;

public class QueriesDemo{

	public static void main(String[] args) {

		String username;
		String password;
		QueriesDemoGUI userExperience = null;

		if(args.length < 2) {
			System.out.println("Invalid command line use!!!");
			System.out.println("QueriesDemo <DB username> <DB password>");
			return;
		}

		username = args[0];
		password = args[1];

		runGUI(userExperience);

		//runDemo(username, password);
	}

	public static void runGUI(QueriesDemoGUI gui) {
		gui = new QueriesDemoGUI();
		gui.setResizable( false );
		gui.setDefaultCloseOperation( JFrame.EXIT_ON_CLOSE );
		gui.setSize( 700, 350 );
		gui.setVisible( true );
	}

	public static void runDemo(String username, String password) {

		OracleDataSource db = null;
		Connection conn 	= null;
		Statement stmt 		= null;
		ResultSet rset 		= null;

		// Test to load setup.sql from file
		String setupSQLString = null;

		try {
			Path setupSQLpath = Paths.get("C:/Users/Salmon/Google Drive/Code/4125/group project/java", "setup.sql");
			byte[] setupSQLbyteArray = Files.readAllBytes(setupSQLpath);
			setupSQLString = new String(setupSQLbyteArray, "ISO-8859-1");
      		//System.out.println(setupSQLString);
	    } catch (IOException e) {
	      	System.out.println(e);
	    }
	    //###################

		try{
			db = new OracleDataSource();
			db.setURL("jdbc:oracle:thin:@//dbsvcs.cs.uno.edu:1521/ORCL.CS.UNO.EDU");
			db.setUser(username);
			db.setPassword(password);
			conn = db.getConnection();

			stmt = conn.createStatement();

			stmt.executeUpdate(setupSQLString);

			// This is an example query, this will be replaced with your queries, each located in its own method
			rset = stmt.executeQuery("select first_name from person");

			// This is an example of displaying query results, this will be handled by a display method
			while(rset.next()) {
				System.out.println(rset.getString("first_name"));
			}

			stmt.close();
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
			return;
		}
	}
}