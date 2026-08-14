package com.fb;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SaveFeedbackServlet")
public class SaveFeedbackServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String htno = request.getParameter("htno");
        String name = request.getParameter("name");
        String year = request.getParameter("year");
        String branch = request.getParameter("branch");
        String semester = request.getParameter("semester");
        String comment = request.getParameter("comment");

        try {

            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO fb(htno,name,year,branch,semester,comment) VALUES(?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, htno);
            ps.setString(2, name);
            ps.setString(3, year);
            ps.setString(4, branch);
            ps.setString(5, semester);
            ps.setString(6, comment);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                request.setAttribute("message",
                        "Feedback Submitted Successfully.");
            } else {
                request.setAttribute("message",
                        "Failed to Submit Feedback.");
            }

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();

            request.setAttribute("message",
                    "Error : " + e.getMessage());
        }

        request.getRequestDispatcher("result.jsp")
               .forward(request, response);
    }
}
