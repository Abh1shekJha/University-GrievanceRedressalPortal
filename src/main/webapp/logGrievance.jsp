<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<title>Dashboard - Grievance Redressal Portal</title>


<jsp:include page="headbar.jsp" />



<jsp:include page="leftPanel.jsp"></jsp:include>



<section id="dashboard" class="right-panel">

	<h3 class="panel-heading">Log a Grievance!</h3>



	<div id="admin-dashboard-panel" class="data-panel container-fluid">

		<div class="container-fluid gReg">
		<div class="row ps-5 pe-5">

		<% if (request.getAttribute("successMessage") != null) { %>
        <div class="alert alert-info pt-1 pb-0 mt-0 mb-0" style="border:1px solid #85B766;"role="alert">
        <p class="text-justify">
        <%= request.getAttribute("successMessage") %>!
        </p>
        </div>
    	<% } %>
    	
    	 <% if (request.getAttribute("errorMessage") != null) { %>
        <div class="alert alert-danger " style="border:1px solid #85B766;"role="alert">
        <%= request.getAttribute("errorMessage") %>!</div>
   		 <% } %>
         
		
		
		</div>
			<div class="row ps-5 pe-5">
				<form method="post" action="LogGrievance">

					<div class="row">
						<div class="fLeft ps-2 col-md-6">
							<div class="input-group mt-3">
								<span class="input-group-text" id="Label-1">Name: </span> <input
									disabled type="text" class="form-control"
									aria-label="Fname"
									aria-describedby="basic-addon1" placeholder="<%=session.getAttribute("username")%>">
							</div>
						</div>
						<div class="fLeft ps-2 col-md-5">
							<div class="input-group mt-3">
								<span class="input-group-text" id="Label-2">Registration
									Number: </span> <input disabled type="text" class="form-control"
									placeholder="<%=session.getAttribute("reg_no")%>" aria-label="RegNo"
									aria-describedby="basic-addon1" value="">
							</div>
						</div>
					</div>

					<div class="row">

						<div class="fLeft ps-2 col-md-3">
							<div class="input-group mt-3">
								<span class="input-group-text" id="Label-3">Roll No. </span> <input
									type="text" disabled class="form-control" placeholder="<%=session.getAttribute("roll_no")%>"
									aria-label="Fname" aria-describedby="basic-addon1">
							</div>
						</div>

						<div class="fLeft ps-2 col-md-4">
							<div class="input-group mt-3">
								<span class="input-group-text" id="Label-3">Email: </span> <input
									type="email" disabled class="form-control"
									placeholder="<%=session.getAttribute("email")%>" aria-label="Email"
									aria-describedby="basic-addon1">
							</div>
						</div>
						<div class="fLeft ps-2 col-md-4">
							<div class="input-group mt-3">
								<span class="input-group-text" id="Label-4">Mobile No. </span><span
									class="input-group-text bg-dark text-light"> +91 -</span> <input
									type="text" disabled class="form-control" placeholder="<%=session.getAttribute("mobile")%>"
									aria-label="Fname" aria-describedby="basic-addon1">
							</div>
						</div>


					</div>

					<div class="row">

						<div class="fLeft ps-2 col-md-4">
							<div class="input-group mt-3">
								<span class="input-group-text" id="Label-5">Category: </span> <select
									class="form-control form-select" id="category" name="category">
									<option selected>Select</option>
									<option>Hostel</option>
									<option>Mess</option>
									<option>Academics</option>
									<option>Accounts</option>
								</select>
							</div>
						</div>


						<div class="fLeft ps-2 col-md-4">
							<div class="input-group mt-3">
								<span class="input-group-text" id="Label-6">Severity: </span> <select
									class="form-control form-select" id="category" name="severity">
									<option selected>Select</option>
									<option>Low</option>
									<option>Medium</option>
									<option>High</option>
								</select>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="input-group mt-3 mb-3">
							<span class="input-group-text">Grievance:&nbsp;&nbsp; <span style="color:red;" class="fw-bold"> *</span></span>
							<textarea name="grievance" class="form-control" rows="5" id="grievance" required></textarea>
						</div>
					</div>

					<div class="row mb-4">
						<center>
							<button type="submit" class="btn btn-primary col-md-3 center">Submit</button>
						</center>
					</div>

				</form>
			</div>
		</div>

	</div>


	<jsp:include page="footer.jsp" />