package com.login.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class LogoutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session != null && session.getAttribute("userId") != null) {
            int userId = (int) session.getAttribute("userId");

            try (Connection conn = DBConnection.getConnection()) {
                // Update logout_time for the latest login_activity where logout_time is null
                PreparedStatement stmt = conn.prepareStatement(
                    "UPDATE login_activity SET logout_time = NOW() WHERE user_id = ? AND logout_time IS NULL"
                );
                stmt.setInt(1, userId);
                stmt.executeUpdate();

            } catch (Exception e) {
                e.printStackTrace();
            }

            session.invalidate();
        }

        response.sendRedirect("login.jsp");
    }
}
