package net.grp.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Logout")
public class Logout extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // invalidate the session and redirect to the login page
        String userType = (String) request.getSession().getAttribute("userType");
    	request.getSession().invalidate();
        //response.sendRedirect("index.jsp");
        
        request.setAttribute("logOutMessage", "Logged Out Successfully!");
        
        if(userType.equals("user"))
        	request.getRequestDispatcher("index.jsp").forward(request, response);
        
        if(userType.equals("admin"))
        	request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
        
		
    }
}

