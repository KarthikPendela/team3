<!DOCTYPE html>
<html>
<head>
	<title>REJECTION OF APPLICATION</title>
</head>

<body>

	<h1>REJECT AN APPLICATION</h1>
	<form action="BidderServlet" method="GET">
	
		<input type="hidden" name="command" value="DELETE"/>
		
		<p>Enter the BankID of the Application you Want To Delete</p>
		<br/><br/>
		BankID:<input type="text" name="BankId"/>
		
		<br/><br/>
		<input type="Submit" value="Delete"/>
	
	
	</form>


</body>
	



</html>