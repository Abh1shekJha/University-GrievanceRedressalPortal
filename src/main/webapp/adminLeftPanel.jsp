<section id="left-panel">

	<div id="content-box">

		<span style="font-weight: 500; color: #99DDFF">Welcome <%=session.getAttribute("username")%>!
		</span><br>
		<hr>
		<span>MAIN</span>
		
		<i class="fa-solid fa-message-pen"></i>

		<ul id="Menu" class="Menu">
			<li><i class="fas fa-laptop-house"></i><a href="adminDashboard.jsp">
					Dashboard</a></li>
			<li><i class="fas fa-users"></i><a href="manageUsers.jsp">
					Manage Users</a></li>
			<li><i class="fas fa-list"></i><a href="viewGrievances.jsp"> View Grievances</a></li>
			<li><i class="fas fa-pen-square"></i><a href="#"> Post Notice
				</a></li>
		</ul>

		<hr>
		<ul id="Profile" class="Menu">

			<li><i class="fas fa-user-circle"></i><a href="#"> My
					Profile</a></li>
			<li><i class="fas fa-key"></i><a href="#"> Change Password</a></li>
			<li>
			<li><i class="fas fa-sign-out-alt"></i><a href="Logout">Logout</a></li>
		</ul>
	</div>





</section>
