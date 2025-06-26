<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f6ff;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 700px;
            margin: 50px auto;
            padding: 25px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h3 {
            color: #007bff;
            margin-bottom: 20px;
        }

        a {
            display: inline-block;
            margin-top: 15px;
            font-size: 14px;
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        .login-container {
            margin-top: 30px;
        }
    </style>
</head>
<body>
<%
    String message = (String) request.getAttribute("success");
%>

<div class="container">
    <% if (message.toLowerCase().contains("created")) { %>
        <h3><%= message %></h3>
        <div class="login-container">
            <jsp:include page="./login.jsp"/>
        </div>
    <% } else if (message.toLowerCase().contains("updated")) { %>
        <jsp:include page="./home.jsp"/>
        <h3><%= message %></h3>
    <% } else if (message.toLowerCase().contains("deleted")) { %>
        <jsp:include page="./home.jsp"/>
        <h3><%= message %></h3>
        <a href="./login.jsp">Login with other user details</a>
    <% } %>
</div>
</body>
</html>
