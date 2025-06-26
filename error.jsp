<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String message = (String)request.getAttribute("error"); %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><%=message%></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 60%;
            margin: 50px auto;
            padding: 30px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
            border-radius: 10px;
        }

        h3 {
            color: red;
            font-size: 20px;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <jsp:include page="./home.jsp"/>

    <div class="container">
        <h3><%= message %></h3>

        <% if(message.contains("not found")) { %>
            <a href="./login.jsp">Login with other user details</a>
        <% } else if(message.contains("No Users found")) { %>
            <a href="./register.html">Register New User</a>
        <% } %>
    </div>
</body>
</html>
