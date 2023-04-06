<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<title>Dashboard - Grievance Redressal Portal</title>


<jsp:include page="headbar.jsp" />

<jsp:include page="adminLeftPanel.jsp"></jsp:include>

<section id="dashboard" class="right-panel">

	<h3 class="panel-heading">Dashboard</h3>



	<div id="admin-dashboard-panel" class="data-panel container">





		<div class="row">
			<a href="manageUsers.jsp" style="text-decoration:none;" class="col dashboard-block darkcyan">
			<div id="hostel-rooms" class="">

				<i class="fas fa-users fa-4x"></i>

				<h5 class="bold">Manage Users</h5>
			</div>
			</a>
			
			<a href="viewGrievances.jsp" style="text-decoration:none;" class="col dashboard-block carnelian">
			<div id="alot-rooms" class="">
				<i class="fas fa-list fa-4x"></i>
				<h5 class="bold">View Grievances</h5>
			</div>
			</a>
			
			<a href="#" style="text-decoration:none; margin-right: 2%;" class="col dashboard-block midnblue">
			<div class="" style="margin-right: 2%;">
					
				<i class="fas fa-chalkboard fa-4x"></i>
				<h5 class="bold">Notice Board</h5>
			</div>
			</a>
		</div>


	</div>


	<jsp:include page="footer.jsp" />