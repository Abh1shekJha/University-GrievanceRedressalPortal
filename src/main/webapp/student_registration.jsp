<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<title>Student Registration - Grievance Redressal Portal</title>
<jsp:include page="headbar.jsp" />
 <% 
      	if (session.getAttribute("username") != null) 
    	  response.sendRedirect("dashboard.jsp");
      %>
    

<section id="left-panel">

	<div id="content-box">

		<span>MAIN</span>
		<ul id="Menu" class="Menu">

			<li><i class="fas fa-file-signature"></i><a
				href="student_registration.jsp"> User Registration</a></li>
			<li>
			<li><i class="fas fa-users"></i><a href="index.jsp"> User
					Login</a></li>
			<li>
			<li><i class="fas fa-user-shield"></i><a href="adminLogin.jsp">
					Admin Login</a></li>
		</ul>

	</div>

</section>


<section id="right-panel" class="right-panel">

	<h3>Student Registration</h3>

	<div class="reg-form col-md-6" style="opacity: 0.9; float:left ">

		<form id="RegistrationForm" method="post" action="Register">
			<h5>Enter Your Details:</h5>
			 
			<table>

				<tr>
					<td>Registration No.:</td>
					<td><input id="RegNo" name="RegNo" class="inputClass"
						type="text"></td>
				</tr>
				<tr>
					<td>Roll No.:</td>
					<td><input id="Rno" name="Rno" class="inputClass" type="text"></td>
				</tr>
				<tr>
					<td>First Name:</td>
					<td><input id="Fname" name="Fname" class="inputClass"
						type="text"></td>
				</tr>

				<tr>
					<td>Last Name:</td>
					<td><input id="Lname" name="Lname" class="inputClass"
						type="text"></td>
				</tr>

				<tr>
					<td>Gender:</td>
					<td><input id="Gender" type="radio" name="Gender" value="Male">
						Male <input type="radio" name="Gender" value="Female">
						Female</td>

				</tr>
				<tr>
					<td>Mobile No:</td>
					<td><input id="Mobile" name="Mobile" class="inputClass"
						type="text"></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input id="Email" name="Email" autocomplete="off" class="inputClass"
						type="email"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input id="Pass" name="Pass" class="inputClass"
						type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"></td>
				</tr>
				<tr>
					<td>Confirm Password:</td>
					<td><input id="Cnpass" name="Cnpass" class="inputClass"
						type="password"></td>
				</tr>
				<tr>
					<td></td>
					<td><input id="submit-btn" class="inputClass" type="submit"
						value="Register"></td>

				</tr>

			</table>

		</form>

	</div>
	
	 <% if (request.getAttribute("errorMessage") != null) { %>
        <div class="alert m-5 pt-5 pb-5 alert-danger  col-md-3" role="alert" style="float:left">
        <%= request.getAttribute("errorMessage") %>!</div>
    <% } %>
         


</div>


 <jsp:include page="footer.jsp"></jsp:include>