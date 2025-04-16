<%@ page session="true" %>
<%
if (!"admin".equals(session.getAttribute("role"))) {
    response.sendRedirect("dashboard.jsp");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Panel</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #2c3e50;
            color: white;
            text-align: center;
            padding: 50px;
        }
        .container {
            background: #34495e;
            padding: 30px;
            border-radius: 15px;
            display: inline-block;
        }
        a {
            color: #ecf0f1;
            background-color: #e74c3c;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 8px;
            margin-top: 20px;
            display: inline-block;
        }
        a:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome to Admin Panel</h2>
        <p>You have full access to manage the system.</p>
        <a href="logout.jsp">Logout</a>
    </div>
</body>
</html>
