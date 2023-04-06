<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="net.grp.dao.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.sql.*" %>


<jsp:include page="header.jsp" />
<title>Dashboard - Grievance Redressal Portal</title>


<jsp:include page="headbar.jsp" />

<jsp:include page="adminLeftPanel.jsp"></jsp:include>

<section id="dashboard" class="right-panel">

	<h3 class="panel-heading">View Grievances</h3>



	
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
					<hr>					
				</ul>
			</div>
		</nav>
		
		<div class="container-fluid">
			<table class="table table-striped">
				<thead>
					<tr>
						<th class="col-md-2">Reference No.</th>
						<th class="col-md-4">Grievance</th>
						<th class="col-md-1">Category</th>
						<th class="col-md-1">Severity</th>
						<th class="col-md-1">Status</th>
						<th class="col-md-3">Mark As</th>
						
      	
					</tr>
				</thead>
				<tbody>
					
				
				<%
				try{ 
				DBConn connect = new DBConn();
		    	Connection dbConn = connect.getConnection();
		    	String sql ="SELECT * from grievances;";
		    	PreparedStatement stmt= dbConn.prepareStatement(sql);
		    	//String reg_no = session.getAttribute("reg_no").toString();
		    	//stmt.setString(1, reg_no);
		    	ResultSet resultSet = stmt.executeQuery();
		    	while(resultSet.next()){
		    	%> 
		    		<tr>

		    		<td class="col-md"><%=resultSet.getString("reference_no") %></td>
		    		<td class="col-md text-justify"><%=resultSet.getString("grievance") %></td>
		    		<td class="col-md"><%=resultSet.getString("category") %></td>		    		
		    		<td class="col-md"><%=resultSet.getString("severity") %></td>
		    		<td class="success fw-bold"><%=resultSet.getString("status").toUpperCase() %></td>
		    		<td class="col-md">
				        <a href="#" class="btn btn-danger btn-sm">Open</a>
				        <a href="#" class="btn btn-primary btn-sm">In Progress</a>
				        <a href="#" class="btn btn-success btn-sm">Resolved	</a>
				      </td>
		    		</tr>

		    		<% 
		    		}

		    	} catch (Exception e) {
		    		e.printStackTrace();
		    		}
		    		%>
								
			
					
				</tbody>
			</table>

		</div>
		
		
		



	</div>


	<jsp:include page="footer.jsp" />