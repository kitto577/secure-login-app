<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body {
            background: #34495e;
            color: white;
            font-family: 'Segoe UI';
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background: #2c3e50;
            padding: 40px;
            border-radius: 12px;
        }
        input, select {
            margin: 10px 0;
            padding: 10px;
            width: 100%;
            border-radius: 5px;
            border: none;
        }
        input[type="submit"] {
            background: #27ae60;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background: #2ecc71;
        }
    </style>
</head>
<body>
    <form action="LoginServlet" method="post">
        <h2>Login</h2>
        <input type="text" name="username" placeholder="Username" required /><br>
        <input type="password" name="password" placeholder="Password" required /><br>
        <input type="submit" value="Login" />
    </form>
</body>
</html>
