<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<title>Grievance Redressal Portal - Login</title>
<jsp:include page="headbar.jsp"/>
	
      <% 
      	if (session.getAttribute("username") != null) 
    	  response.sendRedirect("dashboard.jsp");
      %>
      
        
      
      <section id="left-panel">
      
          <div id="content-box">
          
              <span>MAIN</span>
              <ul id="Menu" class="Menu">
              
                 <li><i class="fas fa-file-signature"></i><a href="student_registration.jsp"> User Registration</a></li>
                 <li><li><i class="fas fa-users"></i><a href="index.jsp"> User Login</a></li>
                 <li><li><i class="fas fa-user-shield"></i><a href="adminLogin.jsp"> Admin Login</a></li>
              </ul>
          
          </div>
      
      </section>
    
      
      <section id="right-panel" class="right-panel">
      
          <h3>User Login</h3>
          <div id="login-box">
          
          <% if (request.getAttribute("errorMessage") != null) { %>
        <div class="alert alert-danger " style="border:1px solid #85B766;"role="alert">
        <%= request.getAttribute("errorMessage") %>!</div>
    <% } %>
         
          <% if (request.getAttribute("successMessage") != null) { %>
        <div class="alert alert-info " style="border:1px solid #85B766;"role="alert">
        <%= request.getAttribute("successMessage") %>!</div>
    <% } %>
         
          <% if (request.getAttribute("logOutMessage") != null) { %>
        <div class="alert alert-info " style="border:1px solid #85B766;"role="alert">
        <%= request.getAttribute("logOutMessage") %>!</div>
    <% } %>
              
           <form id="login" method="post" action="Login">
            
                <table>
                    
                    <tr>
                        <td><h6>Username</h6></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="email" placeholder="Ex: 19cxe001.name@giet.edu"></td>
                    </tr>
                    <tr>
                        <td><h6>Password</h6></td>
                    </tr>
                    
                    <tr>
                        <td><input type="password" name="pass" placeholder="Password"></td>
                    </tr>

                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;<a href="#link">Forgot Password?</a></td>
                    </tr>
                    <tr>
                        <td><input id="login-btn" type="submit" value="Login"></td>
                            
                    
                    </tr>
                
                </table>          
              
            </form>  
          </div>
          
 
 <jsp:include page="footer.jsp"></jsp:include>