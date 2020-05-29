<%@page import="Customer.ReportClass"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.ArrayList"%> 

<!DOCTYPE html>
<html>
<head>
	<title>FINAL REPORT</title>
</head>
<body>
	<h1>FINAL REPORT</h1>
	<br/><br/>
	<table border="1">
		<tr>
			<th>VehicleID</th>
			<th>BankID</th>
			<th>HIGHEST BID</th>
		</tr>
		
		<%ArrayList<ReportClass> reports =(ArrayList<ReportClass>)request.getAttribute("REPORT-LIST");
				for(ReportClass tempReports:reports){%>
				
				<tr>
					<td><%=tempReports.getVehicleID() %></td>
					<td><%=tempReports.getBankID() %></td>
					<td><%=tempReports.getHighestBid() %></td>
					
				</tr>
		<%} %>

	</table>
	
</body>
</html>