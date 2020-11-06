package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import daoImpl.StudentsDAOImpl;

public class ConnectionFactory {

	public static final String URL = "jdbc:mysql://localhost:3306/BookStore";
	public static final String USER = "root";
	public static final String PASS = "trinhdien!123";

	/**
	 * Get a connection to database
	 * 
	 * @return Connection object
	 */

	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(URL, USER, PASS);
			System.out.println("connect successfully!");
		} catch (Exception ex) {
			System.out.println("connect failure!");
			ex.printStackTrace();
		}
		return conn;
	}

	/**
	 * Test Connection
	 */
//	public static void main(String[] args) {
//		StudentsDAOImpl.listMuonSach("2016-08-15", "2020-07-28");
//	}
	 public static void main(String[] args) {
	        ConnectionFactory.getConnection();
	    }
}
