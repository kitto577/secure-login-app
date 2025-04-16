package com.login.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;

public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        try (Connection conn = DBConnection.getConnection()) {
            if (conn != null) {
                PreparedStatement ps = conn.prepareStatement(
                    "INSERT INTO users (username, password, role) VALUES (?, ?, ?)"
                );
                ps.setString(1, username);
                ps.setString(2, password);
                ps.setString(3, role);
                ps.executeUpdate();

                response.sendRedirect("login.jsp");
            } else {
                response.getWriter().write("Database connection failed.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error: " + e.getMessage());
        }
    }
}
