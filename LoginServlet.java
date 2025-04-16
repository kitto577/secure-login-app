package com.login.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try (Connection conn = DBConnection.getConnection()) {
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users WHERE username = ? AND password = ?");
            stmt.setString(1, username);
            stmt.setString(2, password);

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int userId = rs.getInt("id");

                // Store user session
                HttpSession session = request.getSession();
                session.setAttribute("userId", userId);
                session.setAttribute("username", username);

                // Insert login time into login_activity
                PreparedStatement activityStmt = conn.prepareStatement("INSERT INTO login_activity (user_id, login_time) VALUES (?, NOW())");
                activityStmt.setInt(1, userId);
                activityStmt.executeUpdate();

                response.sendRedirect("welcome.jsp");
            } else {
                response.sendRedirect("login.jsp?error=invalid");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=exception");
        }
    }
}
