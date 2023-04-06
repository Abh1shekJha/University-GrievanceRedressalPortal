package net.grp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.grp.model.Users;

public class RegistrationDAO {

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
		Connection dbconn=null;
		try {
			dbconn=DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dbconn;
	}
	
	public boolean insert(Users user) {
		loadDriver(dbDriver);
		Connection dbconn = getConnection();
		boolean result = true;
		String sql="INSERT INTO users (reg_no, roll_no, f_name, l_name, gender, mobile, email, pass, TIMESTAMP) VALUES (?, ?, ?,?,?,?, ?, ?, CURRENT_TIMESTAMP());";
		
		try {
			PreparedStatement ps = dbconn.prepareStatement(sql);
			ps.setString(1, user.getRegNo());
			ps.setString(2, user.getrNo());
			ps.setString(3, user.getfName());
			ps.setString(4, user.getlName());
			ps.setString(5, user.getGender());
			ps.setString(6, user.getMobile());
			ps.setString(7, user.getEmail());
			ps.setString(8, user.getPass());
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result=false;
		}
		
		return result;
	}
}
