package net.grp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAOwarehouse {

	public Connection dbConn;
	
	ResultSet fetchUserData(String reg_no) {
		ResultSet rs = null;
		DBConn connect = new DBConn();
		dbConn = connect.getConnection();
		
		String sql="SELECT * FROM users WHERE reg_no = ?;";
		
		try {
			PreparedStatement ps = dbConn.prepareStatement(sql);
			ps.setString(1, sql);
			rs=ps.executeQuery();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
}
