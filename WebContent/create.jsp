<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create user</title>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<table style="width:50%; margin:0 auto; margin-top:5%" cellspacing="2" cellpadding="8" class="bg-light">
		<tbody>
			<tr>
				<td align="right">
					<span>First name:</span>
				</td>
				<td>
					<input type="text">
				</td>
			</tr>
			<tr>
				<td align="right">
					<span>Last Name:</span>
				</td>
				<td>
					<input type="text">
				</td>
			</tr>
			<tr>
				<td align="right">
					<span>User ID:</span>
				</td>
				<td>
					<input type="text">
				</td>
			</tr>
			<tr>
				<td align="right">
					<span>Password:</span>
				</td>
				<td>
					<input type="text" type="password">
				</td>
			</tr>
			<tr>
				<td align="right">
					<span>Confirm password:	</span>
				</td>
				<td>
					<input type="text" type="password">
				</td>
			</tr>
			<tr>
				<td align="right">
					<span>Email address:</span>
				</td>
				<td>
					<input type="email">
				</td>
			</tr>
			<tr>
				<td align="right">
					<span>Additional email address:</span>
				</td>
				<td>
					<input type="email">
				</td>
			</tr>
			<tr>
				<td align="right">
				</td>
				<td>
					<span>
						<input name="checkbox" type="checkbox">
					</span>
					<span>I agree to the</span>
					<a href="#">Terms of service </a>"and"
					<a href="#">Privacy policy</a>
				</td>
			</tr>
			<tr>
				<td></td>
				<td align="left">
					<input type="button" name="" value="Register new account">
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>