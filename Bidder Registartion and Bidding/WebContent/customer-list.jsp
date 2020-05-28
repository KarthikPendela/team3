<%@page import="Customer.CustomerApplication"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.List"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Customer-List</title>
</head>

<body>
	<h1>This is the List of Registered Bidders</h1>
	
	<table border="1">
	
		<tr>
		
			<th>BankID</th>
			<th>AadharID</th>
			<th>Age</th>
			<th>Address</th>
			<th>Salary</th>
		</tr>
		
		<%ArrayList<CustomerApplication> customers =(ArrayList<CustomerApplication>)request.getAttribute("CUSTOMER-LIST");
				for(CustomerApplication tempCustomer:customers){%>
				
				<tr>
					<td><%=tempCustomer.getBankID() %></td>
					<td><%=tempCustomer.getAadharID() %></td>
					<td><%=tempCustomer.getAge() %></td>
					<td><%=tempCustomer.getAddress() %></td>
					<td><%=tempCustomer.getSalary() %></td>
					
				</tr>
		<%} %>
	</table>
	<br/>
	<br/>
	
	<a href="delete.jsp">If you want to delete any of the Customer Click here</a>


</body>
</html>

    