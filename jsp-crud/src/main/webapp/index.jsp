<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Management</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            width: 90%;
            max-width: 600px;
            padding: 30px;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #333;
            text-align: center;
            margin-top: 0;
            margin-bottom: 30px;
            font-size: 28px;
        }
        .form-container {
            text-align: center;
            margin-bottom: 25px;
        }
        .button {
            display: inline-block;
            padding: 12px 24px;
            font-size: 16px;
            font-weight: 600;
            color: #fff;
            background-color: #4CAF50;
            border: none;
            border-radius: 6px;
            text-decoration: none;
            text-align: center;
            transition: background-color 0.3s ease, transform 0.2s ease;
            cursor: pointer;
        }
        .button:hover {
            background-color: #45a049;
            transform: translateY(-2px);
        }
        .link {
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
        }
        .link a {
            color: #1877f2;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
        }
        .link a:hover {
            color: #1559b3;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Book Management</h2>
        <div class="form-container">
            <form action="StudentService" method="get">
                <input type="submit" class="button" value="Get Book Details">
            </form>
        </div>
        <div class="link">
            <a href="addnew.jsp">Add New Book</a>
        </div>
    </div>
</body>
</html>