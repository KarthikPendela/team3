<!DOCTYPE html>
<html>
<head>
	<title>APPLICATION FORM</title>
</head>

<body>
	<h1>Welcome to Application Page</h1>
	<br/>
	<h4>Enter Your Details Here: </h4>
	
	<form action="BidderServlet" method="GET">
		
			<input type="hidden" name="command" value="VALIDITY"/>
			
			<table>
				<tbody>
					<tr>
						<td><label>BankID:</label></td>
						<td><input type="text" name="BankId"/></td>
					</tr>
					
					<tr>
						<td><label>AadharID:</label></td>
						<td><input type="text" name="AadharId"/></td>
					</tr>
					
					<tr>
						<td><label>Age:</label></td>
						<td><input type="text" name="age"/></td>
					</tr>
					
					<tr>
						<td><label>Address:</label></td>
						<td><input type="text" name="address"/></td>
					</tr>
					
					<tr>
						<td><label>Salary:</label></td>
						<td><input type="text" name="salary"/></td>
					</tr>
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save"/></td>
					</tr>
				
				</tbody>
			</table>
		</form>
	



</body>

</html>