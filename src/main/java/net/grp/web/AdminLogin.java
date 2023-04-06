package net.grp.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.grp.dao.DBConn;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        DBConn connect = new DBConn();
    	Connection dbConn = connect.getConnection();
    	String sql ="SELECT * FROM admin WHERE email=? AND pass=?;";
    	PreparedStatement ps;
		try {
			ps = dbConn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
	                // if the user is valid, set session attributes and redirect to a secure page
					request.getSession().setAttribute("uid",rs.getObject(1));
					request.getSession().setAttribute("username",rs.getObject(2));
					request.getSession().setAttribute("email",rs.getObject(5));
					request.getSession().setAttribute("userType", "admin");
	                response.sendRedirect("adminDashboard.jsp");
	            } else {
	                // if the user is not valid, show an error message
	                request.setAttribute("errorMessage", "Invalid username or password.");
	                request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
	            }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    }
