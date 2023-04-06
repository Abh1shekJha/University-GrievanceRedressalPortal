package net.grp.web;

import net.grp.model.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.Session;

import net.grp.dao.DBConn;

/**
 * Servlet implementation class LogGrievance
 */
@WebServlet("/LogGrievance")
public class LogGrievance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogGrievance() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String regNo = request.getSession().getAttribute("reg_no").toString();
		String category = request.getParameter("category");
		String severity = request.getParameter("severity");
		String grievance = request.getParameter("grievance");
		String sql = "INSERT INTO grievances (reference_no, fk_reg_no, category, severity, grievance, TIMESTAMP) VALUES (?,?,?,?,?,?)";
		DBConn connect = new DBConn();
		Timestamp timestamp = new Timestamp(System.currentTimeMillis()); 
		
		String refNo = UniqueReferenceNumberGenerator.generateReferenceNumber(category, timestamp);
		Connection dbconn = connect.getConnection();
		boolean result=true;
		try {
			PreparedStatement ps = dbconn.prepareStatement(sql);
			ps.setString(1, refNo);
			ps.setString(2, regNo);
			ps.setString(3, category);
			ps.setString(4, severity);
			ps.setString(5, grievance);
			ps.setTimestamp(6, timestamp);
			ps.executeUpdate();
			
		} catch (SQLException e) {
			result=false;
			e.printStackTrace();
		}
		
		if(result==false) {
			 request.setAttribute("errorMessage", "Sorry, Something went wrong! Please Try Again!");
             request.getRequestDispatcher("logGrievance.jsp").forward(request, response);
		}
		else {
			 request.setAttribute("successMessage", "<p style=\"text-align:justify\">Thank you for registering your grievance. Your complaint has been successfully submitted and is being reviewed by our team. We will take the necessary action to address your concern and will keep you updated on the progress. <br><b>The Unique Reference No. for your complaint is: "+ refNo+"</b>.</p>");
             request.getRequestDispatcher("success.jsp").forward(request, response);
		}
		
	}

}
