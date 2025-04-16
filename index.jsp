<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to SecureLoginApp</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #6dd5fa, #2980b9);
            color: white;
            text-align: center;
        }

        .container {
            padding-top: 100px;
        }

        h1 {
            font-size: 3em;
        }

        p {
            font-size: 1.3em;
            margin: 20px 0;
        }

        .buttons {
            margin-top: 30px;
        }

        .buttons a {
            display: inline-block;
            margin: 10px;
            padding: 12px 25px;
            background-color: white;
            color: #2980b9;
            text-decoration: none;
            font-weight: bold;
            border-radius: 8px;
            transition: background-color 0.3s, color 0.3s;
        }

        .buttons a:hover {
            background-color: #3498db;
            color: white;
        }

        footer {
            position: fixed;
            bottom: 10px;
            width: 100%;
            font-size: 0.9em;
            color: #eee;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to SecureLoginApp</h1>
        <p>A simple and secure web login system with role-based access control.</p>
        <div class="buttons">
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Register</a>
        </div>
    </div>

    <footer>
        &copy; 2025 SecureLoginApp. All rights reserved.
    </footer>
</body>
</html>
