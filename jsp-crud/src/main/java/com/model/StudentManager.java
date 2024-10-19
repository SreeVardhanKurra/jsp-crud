package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentManager {
    private String url = "jdbc:mysql://localhost:3306/bookdb"; // Update with your database URL
    private String username = "root";  // Your MySQL username
    private String password = "Kishore2005+"; // Your MySQL password

    // Method to save book data
    public String savedata(Student s) throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        try {
            // Establishing connection
            con = DriverManager.getConnection(url, username, password);
            ps = con.prepareStatement("INSERT INTO book VALUES (?, ?, ?)");
            ps.setInt(1, s.getBid());
            ps.setString(2, s.getBname());
            ps.setInt(3, s.getBprice());
            ps.execute();
            return "Data inserted successfully";
        } finally {
            if (ps != null) ps.close();
            if (con != null) con.close();
        }
    }

    // Method to retrieve book data
    public List<Student> readData() {
        List<Student> l = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DriverManager.getConnection(url, username, password);
            ps = con.prepareStatement("SELECT * FROM book");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                s.setBid(rs.getInt(1));      // Assuming first column is Book ID
                s.setBname(rs.getString(2)); // Assuming second column is Book Name
                s.setBprice(rs.getInt(3));   // Assuming third column is Book Price
                l.add(s);
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace(); // Log the exception for debugging
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace(); // Log closing connection errors
            }
        }
        return l;
    }
}
