<!DOCTYPE html>
<html>
<head>
	<title>Bidding Page</title>
</head>
<body>

	<h1>BIDDING PAGE</h1>
	<br/><br/>
	<form action="BidderServlet" method="GET">
	
		<input type="hidden" name="command" value="BID"/>
		<br/><br/>
		<label>BankID:</label> <input type="text" name="BankId"/>
		<br/><br/>
		<label>VehicleID:</label><input type="text" name="VehicleId"/>
		<br/><br/>
		<h4>Kindly Bid Above the BasePrice only..</h4>
		<br/><br/>
		<label>Bid:</label> <input type="text" name="bid"/>
		<br/><br/>
		<input type="submit" value="SUBMIT">
	
	
	</form>

</body>
</html>