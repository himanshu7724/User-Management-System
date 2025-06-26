<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
     <style>
        body {
            font-family: Arial, sans-serif;
            background: #f0f8ff;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 80px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #333;
            margin-bottom: 30px;
        }

        form input[type="submit"] {
            margin: 10px;
            padding: 12px 25px;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        input[value="Get User Details"] {
            background-color: #00ffff;
        }

        input[value="Get All Users"] {
            background-color: #ffb6c1;
        }

        input[value="Update"] {
            background-color: #ffff66;
        }

        input[value="Delete"] {
            background-color: #ff4d4d;
            color: white;
        }

        form input[type="submit"]:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>User Actions</h1>
        <form action="./UserAccountServlet" method="post">
            <input type="submit" name="button" value="Get User Details">
            <input type="submit" name="button" value="Get All Users">
            <input type="submit" name="button" value="Update">
            <input type="submit" name="button" value="Delete">
        </form>
    </div>
</body>
</html>


