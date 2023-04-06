package net.grp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.grp.model.Member;

public class RegisterDAO {

	public String insert(Member member) {
		DBConn connect = new DBConn();
		Connection dbconn = connect.getConnection();
		String result = "Data Entered Successfully";
		String sql="insert into member values(?,?,?,?)";
		
		try {
			PreparedStatement ps = dbconn.prepareStatement(sql);
			ps.setString(1, member.getUname());
			ps.setString(2, member.getPassword());
			ps.setString(3, member.getEmail());
			ps.setString(4, member.getPhone());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result="Data not entered!";
		}
		
		return result;
	}
}
