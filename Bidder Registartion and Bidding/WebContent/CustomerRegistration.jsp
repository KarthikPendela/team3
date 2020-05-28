<!DOCTYPE html>

<html>
<head>
	<title>Registration Form</title>
</head>

<body>
	<h1>Registration Form</h1>
	<form action="BidderServlet" method="GET">
		
			<input type="hidden" name="command" value="ADD"/>
			
			<table>
				<tbody>
					<tr>
						<td><label>First Name:</label></td>
						<td><input type="text" name="firstName"/></td>
					</tr>
					
					<tr>
						<td><label>Last Name:</label></td>
						<td><input type="text" name="lastName"/></td>
					</tr>
					
					<tr>
						<td><label>Email:</label></td>
						<td><input type="text" name="email"/></td>
					</tr>
					
					<tr>
						<td><label>Password:</label></td>
						<td><input type="password" name="password"/></td>
					</tr>
					
					<tr>
						<td><label>DOB:</label></td>
						<td><input type="text" name="DOB"/></td>
					</tr>
					
					<tr>
						<td><label>BankId:</label></td>
						<td><input type="text" name="BankId"/></td>
					</tr>
					
					<tr>
						<td><label>AadharId:</label></td>
						<td><input type="text" name="AadharId"/></td>
					</tr>
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Register"/></td>
					</tr>
				
				</tbody>
			</table>
		</form>


</body>
</html>