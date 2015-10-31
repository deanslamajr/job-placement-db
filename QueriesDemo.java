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

public class QueriesDemo {

	public static void main(String[] args) {

		String username;
		String password;

		if(args.length < 2) {
			System.out.println("Invalid command line use!!!");
			System.out.println("QueriesDemo <DB username> <DB password>");
			return;
		}

		username = args[0];
		password = args[1];

		runDemo(username, password);
	}

	public static void runDemo(String username, String password) {

		OracleDataSource db = null;
		Connection conn 	= null;
		Statement stmt 		= null;
		ResultSet rset 		= null;

		try{
			db = new OracleDataSource();
			db.setURL("jdbc:oracle:thin:@//dbsvcs.cs.uno.edu:1521/ORCL.CS.UNO.EDU");
			db.setUser(username);
			db.setPassword(password);
			conn = db.getConnection();

			stmt = conn.createStatement();

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