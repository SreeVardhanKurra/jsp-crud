package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.Student;
import com.model.StudentManager;

@WebServlet("/AddBook")
public class AddBook extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        try {
            // Retrieve parameters
            int bid = Integer.parseInt(request.getParameter("bid"));
            String bname = request.getParameter("bname");
            int bprice = Integer.parseInt(request.getParameter("bprice"));

            // Create a Student object
            Student s = new Student();
            s.setBid(bid);
            s.setBname(bname);
            s.setBprice(bprice);

            // Save data using StudentManager
            StudentManager sm = new StudentManager();
            String ack = sm.savedata(s);
            pw.print(ack);
        } catch (Exception e) {
            pw.print("Error: " + e.getMessage());
        } finally {
            pw.close();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
