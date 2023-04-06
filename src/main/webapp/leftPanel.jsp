<section id="left-panel">

	<div id="content-box">

		<span style="font-weight: 500; color: #99DDFF">Welcome <%=session.getAttribute("username")%>!
		</span><br>
		<hr>
		<span>MAIN</span>

		<ul id="Menu" class="Menu">
			<li><i class="fas fa-laptop-house"></i><a href="dashboard.jsp">
					Dashboard</a></li>
			<li><i class="fas fa-info-circle"></i><a href="trackStatus.jsp">
					Track Status</a></li>
			<li><i class="far fa-comments"></i><a href="#"> Communicate
					With Us</a></li>
			<li><i class="far fa-clipboard"></i><a href="#"> Notice
					Board</a></li>
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
