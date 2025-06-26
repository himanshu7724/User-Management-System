<%@page import="com.nit.hk.pojo.UserAccount"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #eef4fb;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 500px;
            margin: 60px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 12px 10px;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"],
        input[type="tel"],
        input[type="number"] {
            width: 95%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 6px;
            background-color: #f9f9f9;
        }

        input[disabled] {
            background-color: #e9ecef;
            color: #666;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <jsp:include page="./home.jsp"/>

    <div class="container">
        <%
            UserAccount account = (UserAccount) request.getAttribute("update");
        %>
        <h1>Update <%= account.getUsername() %> Details</h1>
        <form action="./UserAccountServlet" method="post">
            <table>
                <tr>
                    <td>User ID</td>
                    <td><input type="number" disabled="disabled" name="userid" value="<%= account.getUserId() %>" /></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" disabled="disabled" name="username" value="<%= account.getUsername() %>" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" value="<%= account.getPassword() %>"/></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" value="<%= account.getEmail() %>"/></td>
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td><input type="tel" name="mobile" value="<%= account.getMobile() %>"/></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="button" value="Save"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
