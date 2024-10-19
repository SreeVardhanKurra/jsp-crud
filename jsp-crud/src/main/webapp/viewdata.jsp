<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book List</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 20px;
            color: #333;
        }
        h1 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
            font-size: 32px;
        }
        table {
            width: 90%;
            max-width: 800px;
            margin: 0 auto;
            border-collapse: separate;
            border-spacing: 0;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
        th {
            background-color: #3498db;
            color: #fff;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 14px;
            letter-spacing: 0.5px;
        }
        tr:nth-child(even) {
            background-color: #f8f9fa;
        }
        tr:hover {
            background-color: #e8f4f8;
            transition: background-color 0.3s ease;
        }
        td {
            border-top: 1px solid #ecf0f1;
        }
        @media (max-width: 600px) {
            table {
                font-size: 14px;
            }
            th, td {
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <h1>Book List</h1>
    <%@ page import="java.util.*" %>
    <%@ page import="com.model.*" %>
    <%
        @SuppressWarnings("unchecked")
        List<Student> l = (List<Student>) request.getAttribute("list");
    %>
    <table>
        <thead>
            <tr>
                <th>Book ID</th>
                <th>Book Name</th>
                <th>Book Price</th>
            </tr>
        </thead>
        <tbody>
            <% if (l != null && !l.isEmpty()) {
                for (Student s : l) { %>
                <tr>
                    <td><%= s.getBid() %></td>
                    <td><%= s.getBname() %></td>
                    <td><%= s.getBprice() %></td>
                </tr>
            <% }
            } else { %>
                <tr>
                    <td colspan="3" style="text-align: center;">No books available</td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>