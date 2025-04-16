<%@ page session="true" %>
<%
String username = (String) session.getAttribute("username");
String role = (String) session.getAttribute("role");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <style>
        body {
            background: #1abc9c;
            color: white;
            font-family: sans-serif;
            text-align: center;
            padding-top: 100px;
        }
        .card {
            background: #16a085;
            padding: 30px;
            border-radius: 15px;
            display: inline-block;
        }
        a {
            color: #fff;
            background-color: #e67e22;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 8px;
            display: inline-block;
            margin-top: 20px;
        }
        a:hover {
            background-color: #d35400;
        }
    </style>
</head>
<body>
    <div class="card">
        <h2>Welcome, <%= username %>!</h2>
        <p>Your Role: <%= role %></p>
        <a href="logout.jsp">Logout</a>
    </div>
</body>
</html>
