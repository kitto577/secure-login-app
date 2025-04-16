<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <style>
        body {
            background: #8e44ad;
            color: white;
            font-family: 'Segoe UI';
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background: #9b59b6;
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
            background: #2c3e50;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background: #34495e;
        }
    </style>
</head>
<body>
    <form action="RegisterServlet" method="post">
        <h2>Create an Account</h2>
        <input type="text" name="username" placeholder="Choose a Username" required /><br>
        <input type="password" name="password" placeholder="Create a Password" required /><br>
        <select name="role" required>
            <option value="user">User</option>
            <option value="admin">Admin</option>
        </select><br>
        <input type="submit" value="Register" />
    </form>
</body>
</html>
