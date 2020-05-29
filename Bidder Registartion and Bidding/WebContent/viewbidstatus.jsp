<%@page import="Customer.BiddingClass"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.ArrayList"%> 

<!DOCTYPE html>
<html>
<head>
	<title>VIEW BID STATUS</title>
</head>
<body>
	<h1>BIDDING STATUS</h1>
	<br/><br/>
	<table border="1">
		<tr>
			<th>BankID</th>
			<th>VehicleID</th>
			<th>BID</th>
		</tr>
		
		<%ArrayList<BiddingClass> bids =(ArrayList<BiddingClass>)request.getAttribute("BID-LIST");
				for(BiddingClass tempBids:bids){%>
				
				<tr>
					<td><%=tempBids.getBankID() %></td>
					<td><%=tempBids.getVehicleID() %></td>
					<td><%=tempBids.getBid() %></td>
					
				</tr>
		<%} %>

	</table>
	<br/><br/>
	<a href="bid.jsp">BID AGAIN?</a>
	<br/><br/>
	<a href="login.jsp">LOGOUT</a>
</body>
</html>