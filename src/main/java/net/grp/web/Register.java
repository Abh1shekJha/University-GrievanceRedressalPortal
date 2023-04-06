package net.grp.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.grp.dao.RegistrationDAO;
import net.grp.model.Users;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		String regNo = request.getParameter("RegNo");
		String rNo =  request.getParameter("Rno");
		String fName = request.getParameter("Fname");
		String lName = request.getParameter("Lname");
		String gender = request.getParameter("Gender");
		String mobile = request.getParameter("Mobile");
		String email = request.getParameter("Email");
		String pass = request.getParameter("Pass");
		String cnPass = request.getParameter("Cnpass");
		Users user = new Users(regNo, rNo, fName, lName, gender, mobile, email, pass);
		
		RegistrationDAO rDAO = new RegistrationDAO();
		boolean result= rDAO.insert(user);
		//boolean validatePwd = isValidPassword(pass, cnPass);
		
		if(result==true) {
			 // if the user is not valid, show an error message
            request.setAttribute("successMessage", "Registration Successful! Please Login to Continue...");
            request.getRequestDispatcher("index.jsp").forward(request, response);
		}
        else
		{
        	request.setAttribute("errorMessage", "Registration Failed! Please Try Again!!!");
            request.getRequestDispatcher("student_registration.jsp").forward(request, response);
			
		}
			
	}
	
	public static boolean isValidPassword(String password, String cnPass) {
	    // Check if the password is at least 8 characters long
	    if (password.length() < 8) {
	        return false;
	    }

	    // Check if the password contains at least one uppercase letter
	    if (!password.matches(".*[A-Z].*")) {
	        return false;
	    }

	    // Check if the password contains at least one lowercase letter
	    if (!password.matches(".*[a-z].*")) {
	        return false;
	    }

	    // Check if the password contains at least one digit
	    if (!password.matches(".*\\d.*")) {
	        return false;
	    }

	    // Check if the password contains at least one special character
	    if (!password.matches(".*[@#$%^&+=].*")) {
	        return false;
	    }
	    
	    if(!password.equals(cnPass)) {
	    	return false;
	    }
	    
	    return true;
	}


}
