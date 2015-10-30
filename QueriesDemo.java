// TODO
//
// Try to get this working remotely
// Create readme to explain how to set up i.e. include ojdbc7.jar in 'export CLASSPATH="" '


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
			//Class.forName("oracle.jdbc.driver.OracleDriver");
			
			db = new OracleDataSource();
			db.setURL("jdbc:oracle:thin:@//localhost:1521/ORCL.CS.UNO.EDU");
			db.setUser(username);
			db.setPassword(password);
			conn = db.getConnection();
			
			
			/*
			conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@//localhost:1521/SYS$USERS",
				username, password);
			*/

			stmt = conn.createStatement();

			rset = stmt.executeQuery("select first_name from person");

			while(rset.next()) {
				System.out.println(rset.getString("first_name"));
			}

			stmt.close();
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
			return;
		}/* catch (ClassNotFoundException e) {
			e.printStackTrace();
		}*/

	}
}