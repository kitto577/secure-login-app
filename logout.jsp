<%@ page import="java.sql.*,com.login.controller.DBConnection" %>
<%
    long loginTime = (Long) session.getAttribute("login_time");
    long logoutTime = System.currentTimeMillis();
    int sessionTime = (int)((logoutTime - loginTime) / 1000);

    String username = (String) session.getAttribute("username");

    Connection conn = DBConnection.getConnection();
    PreparedStatement ps = conn.prepareStatement(
        "UPDATE users SET total_time_spent = total_time_spent + ? WHERE username = ?"
    );
    ps.setInt(1, sessionTime);
    ps.setString(2, username);
    ps.executeUpdate();

    PreparedStatement ps2 = conn.prepareStatement(
        "UPDATE login_activity SET logout_time = NOW() WHERE user_id = (SELECT id FROM users WHERE username = ?) ORDER BY id DESC LIMIT 1"
    );
    ps2.setString(1, username);
    ps2.executeUpdate();

    session.invalidate();
    response.sendRedirect("login.jsp");
%>
