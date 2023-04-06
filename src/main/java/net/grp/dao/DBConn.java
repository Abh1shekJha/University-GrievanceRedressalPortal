package net.grp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.grp.model.Member;

public class DBConn {

	private String jdbcURL = "jdbc:mysql://localhost:3306/grp";
	private String jdbcUsername = "root";
	private String jdbcPassword = "toor";
	private String dbDriver = "com.mysql.jdbc.Driver";
	
	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Connection getConnection() {
		loadDriver(dbDriver);
		Connection dbconn=null;
		try {
			dbconn=DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dbconn;
	}
	
	
}