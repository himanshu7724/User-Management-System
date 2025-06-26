<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f4f7f9;
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100vh;
			margin: 0;
		}
		form {
			background-color: #ffffff;
			padding: 30px 40px;
			border-radius: 10px;
			box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
			width: 300px;
		}
		table {
			width: 100%;
		}
		td {
			padding: 10px 0;
		}
		input[type="text"],
		input[type="password"] {
			width: 100%;
			padding: 8px;
			border: 1px solid #ccc;
			border-radius: 5px;
		}
		input[type="submit"] {
			width: 100%;
			padding: 10px;
			border: none;
			background-color: #007BFF;
			color: white;
			border-radius: 5px;
			cursor: pointer;
			font-weight: bold;
		}
		input[type="submit"]:hover {
			background-color: #0056b3;
		}
		.error-message {
			color: red;
			font-size: 14px;
			text-align: center;
		}
		.register-link {
			display: block;
			margin-top: 15px;
			text-align: center;
			font-size: 14px;
		}
		.register-link a {
			color: #007BFF;
			text-decoration: none;
		}
		.register-link a:hover {
			text-decoration: underline;
		}
	</style>
</head>
<body>
	<%
		String username = (String) request.getAttribute("username");
		String errorMessage = (String) request.getAttribute("failed");

		if (username == null) {
			username = "";
		}
		if (errorMessage == null) {
			errorMessage = "";
		}
	%>

	<form action="./UserAccountServlet" method="post">
		<table>
			<tr>
				<td>Username</td>
				<td><input type="text" name="username" value="<%= username %>" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" value="" maxlength="32" /></td>
			</tr>
			<tr>
				<td colspan="2" class="error-message"><%= errorMessage %></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="button" value="Login"></td>
			</tr>
		</table>
		<div class="register-link">
			Don't have an account? <a href="register.html">Create an Account</a>
		</div>
	</form>
</body>
</html>
