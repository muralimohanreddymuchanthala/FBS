package com.fb;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SearchFeedbackServlet")
public class SearchFeedbackServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String htno = request.getParameter("htno");

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM fb WHERE htno=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, htno);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                request.setAttribute("htno", rs.getString("htno"));
                request.setAttribute("name", rs.getString("name"));
                request.setAttribute("year", rs.getString("year"));
                request.setAttribute("branch", rs.getString("branch"));
                request.setAttribute("semester", rs.getString("semester"));
                request.setAttribute("comment", rs.getString("comment"));

            } else {

                request.setAttribute("message",
                        "No Feedback Found for HT Number : " + htno);

            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();

            request.setAttribute("message",
                    "Database Error : " + e.getMessage());

        }

        request.getRequestDispatcher("result.jsp")
               .forward(request, response);
    }
}
