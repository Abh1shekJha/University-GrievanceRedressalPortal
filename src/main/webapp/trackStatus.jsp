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
<%@page import="net.grp.dao.*" %>


<jsp:include page="leftPanel.jsp"></jsp:include>



<section id="dashboard" class="right-panel">

	<h3 class="panel-heading">Track Status</h3>

	
	<div id="admin-dashboard-panel"
		style="background-color: aliceblue; box-shadow: 2px 1px 10px black"
		class="data-panel p-4 container-fluid">

		<div class="container-fluid">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Reference No.</th>
						<th>Grievance</th>
						<th>Category</th>
						<th>Severity</th>
						<th>Status<th>
					</tr>
				</thead>
				<tbody>
					
				
				<%
				PreparedStatement stmt =null;
				DBConn connect = null;
				Connection dbConn = null;
				try{ 
				connect = new DBConn();
		    	dbConn = connect.getConnection();
		    	String sql ="SELECT * from grievances where fk_reg_no = ?;";
		    	stmt= dbConn.prepareStatement(sql);
		    	String reg_no = session.getAttribute("reg_no").toString();
		    	stmt.setString(1, reg_no);
		    	
		    	ResultSet resultSet = stmt.executeQuery();
		    	while(resultSet.next()){
		    	%> 
		    		<tr>

		    		<td class="col-md-3"><%=resultSet.getString("reference_no") %></td>
		    		<td class="col-md-5 text-justify"><%=resultSet.getString("grievance") %></td>
		    		<td class="col-md"><%=resultSet.getString("category") %></td>		    		
		    		<td class="col-md"><%=resultSet.getString("severity") %></td>
		    		<td class="success fw-bold"><%=resultSet.getString("status") %></td>
		    		
		    		</tr>

		    		<% 
		    		}

		    	} catch (Exception e) {
		    		e.printStackTrace();
		    		}
					
				finally {
					
					if (stmt != null) {
			            try {
			                stmt.close();
			            } catch (SQLException e) {
			                e.printStackTrace();
			            }
			        }
			        if (dbConn != null) {
			            try {
			                dbConn.close();
			            } catch (SQLException e) {
			                e.printStackTrace();
			            }
			        }
				}
		    		%>
								
				
					
				</tbody>
			</table>

		</div>

	</div>


	<jsp:include page="footer.jsp" />