<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<title>Success - Grievance Redressal Portal</title>


<jsp:include page="headbar.jsp" />

<jsp:include page="leftPanel.jsp"></jsp:include>

<section id="dashboard" class="right-panel">

	<h3 class="panel-heading">Submitted</h3>



	<div id="admin-dashboard-panel" class="data-panel container-fluid">

		<div class="container-fluid bg-light rounded p-5">
		<div class="row ms-5 me-5 mt-4 mt-4 ps-5 pe-5">
		<% if (request.getAttribute("successMessage") != null) { %>
        <div class="alert alert-info p-5" style="border:1px solid #85B766;"role="alert">
                <%= request.getAttribute("successMessage") %>
        </div>
    	<% } %>
    	
    	 <% if (request.getAttribute("errorMessage") != null) { %>
        <div class="alert alert-danger " style="border:1px solid #85B766;"role="alert">
        <%= request.getAttribute("errorMessage") %>!</div>
   		 <% } %>
         
		
		
		</div>
			<div class="row ps-5 pe-5">
							</div>
		</div>

	</div>


	<jsp:include page="footer.jsp" />