<%@page import="com.nit.hk.dao.UserAccountDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.IOException"%>
<%@page import="com.nit.hk.pojo.UserAccount"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Account Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-top: 20px;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #d1ecf1;
        }
    </style>
</head>
<body>
    <jsp:include page="./home.jsp"/>
    <%
        UserAccount account = (UserAccount)request.getAttribute("account");
        ArrayList<UserAccount> accountsList = (ArrayList)request.getAttribute("accountsList");
    %>
    <% if(account != null) { %>
        <h1><%= account.getUsername() %>'s Details</h1>
        <table>
            <tr>
                <th>UserId</th>
                <th>Username</th>
                <th>Password</th>
                <th>Email</th>
                <th>Mobile</th>
            </tr>
            <tr>
                <td><%= account.getUserId() %></td>
                <td><%= account.getUsername() %></td>
                <td><%= account.getPassword() %></td>
                <td><%= account.getEmail() %></td>
                <td><%= account.getMobile() %></td>
            </tr>
        </table>
    <% } else if(accountsList != null && !accountsList.isEmpty()) { %>
        <h1>All Users Details</h1>
        <table>
            <tr>
                <th>UserId</th>
                <th>Username</th>
                <th>Password</th>
                <th>Email</th>
                <th>Mobile</th>
            </tr>
            <% for(UserAccount userAccount : accountsList) { %>
                <tr>
                    <td><%= userAccount.getUserId() %></td>
                    <td><%= userAccount.getUsername() %></td>
                    <td><%= userAccount.getPassword() %></td>
                    <td><%= userAccount.getEmail() %></td>
                    <td><%= userAccount.getMobile() %></td>
                </tr>
            <% } %>
        </table>
    <% } %>
</body>
</html>
