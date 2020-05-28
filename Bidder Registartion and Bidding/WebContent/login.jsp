<!DOCTYPE html>

<html>
<head>
	<title>LOGIN PAGE</title>
</head>
<body>
	<h1>WELCOME TO THE LOGIN PAGE</h1>
	<form action="BidderServlet" method="GET">
		<input type="hidden" name="command" value="LOGIN"/>
		BankID: <input type="text" name="BankId"/>
		<br/><br/>
		Password: <input type="password" name="password"/>
		<br/><br/>
		<input type="submit" value="LOGIN"/>
	</form>
</body>
</html>