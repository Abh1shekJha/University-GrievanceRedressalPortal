<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<title>Dashboard - Grievance Redressal Portal</title>


<jsp:include page="headbar.jsp" />

<jsp:include page="adminLeftPanel.jsp"></jsp:include>

<section id="dashboard" class="right-panel">

	<h3 class="panel-heading">User Management Console</h3>



	
<div id="admin-dashboard-panel"
		style="background-color: aliceblue; box-shadow: 2px 1px 10px black"
		class="data-panel p-4 container-fluid">


		<nav class=" p-0 navbar navbar-expand-lg navbar-light bg-dark">

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav bg-dark">
					<li class="nav-item" style="color:#fff;"><strong><em><a style="color:#fff;" class="ps-2 nav-link" href="#"><i class="fas fa-user-plus"></i> Add User</a></em></strong>
					</li>
					
				</ul>
			</div>
		</nav>
		
		<table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Role</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>John Doe</td>
      <td>johndoe@example.com</td>
      <td>User</td>
      <td>
        <a href="#" class="btn btn-primary btn-sm">Edit</a>
        <a href="#" class="btn btn-danger btn-sm">Delete</a>
      </td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jane Smith</td>
      <td>janesmith@example.com</td>
      <td>Admin</td>
      <td>
        <a href="#" class="btn btn-primary btn-sm">Edit</a>
        <a href="#" class="btn btn-danger btn-sm">Delete</a>
      </td>
    </tr>
  </tbody>
</table>
		
		
		



	</div>


	<jsp:include page="footer.jsp" />