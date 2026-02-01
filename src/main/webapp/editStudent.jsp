<%@ page import="com.SMS.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Student s = (Student) request.getAttribute("student");
    if (s == null) {
        response.sendRedirect("viewStudents?error=Student not found");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 40px 20px;
        }
        
        .container {
            max-width: 600px;
            margin: 0 auto;
        }
        
        .back-link {
            display: inline-block;
            margin-bottom: 20px;
            padding: 10px 20px;
            background: white;
            color: #667eea;
            text-decoration: none;
            border-radius: 25px;
            font-weight: bold;
            transition: all 0.3s ease;
        }
        
        .back-link:hover {
            background: #f0f0f0;
            transform: translateY(-2px);
        }
        
        .box {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
        }
        
        h2 {
            color: #667eea;
            margin-bottom: 30px;
            text-align: center;
            font-size: 2em;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            font-weight: 600;
            font-size: 0.95em;
        }
        
        input[type="text"],
        input[type="email"],
        input[type="date"],
        input[type="number"],
        select,
        textarea {
            width: 100%;
            padding: 12px;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            font-size: 1em;
            transition: all 0.3s ease;
            font-family: inherit;
        }
        
        input:focus,
        select:focus,
        textarea:focus {
            outline: none;
            border-color: #667eea;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }
        
        textarea {
            resize: vertical;
            min-height: 80px;
        }
        
        button {
            padding: 15px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
            border-radius: 8px;
            width: 100%;
            font-size: 1.1em;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 10px;
        }
        
        button:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
        }
    </style>
</head>
<body>
    <div class="container">
        <a href="viewStudents" class="back-link">← Back to Students</a>
        
        <div class="box">
            <h2>Edit Student</h2>

            <form action="editStudent" method="post">
                <input type="hidden" name="id" value="<%= s.getId() %>">

                <div class="form-group">
                    <label for="firstName">First Name *</label>
                    <input type="text" id="firstName" name="firstName" value="<%= s.getFirstName() != null ? s.getFirstName() : "" %>" required>
                </div>

                <div class="form-group">
                    <label for="lastName">Last Name *</label>
                    <input type="text" id="lastName" name="lastName" value="<%= s.getLastName() != null ? s.getLastName() : "" %>" required>
                </div>

                <div class="form-group">
                    <label for="gender">Gender *</label>
                    <select id="gender" name="gender" required>
                        <option value="Male" <%= "Male".equals(s.getGender()) ? "selected" : "" %>>Male</option>
                        <option value="Female" <%= "Female".equals(s.getGender()) ? "selected" : "" %>>Female</option>
                        <option value="Other" <%= "Other".equals(s.getGender()) ? "selected" : "" %>>Other</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="dob">Date of Birth *</label>
                    <input type="date" id="dob" name="dob" value="<%= s.getDob() != null ? s.getDob() : "" %>" required>
                </div>

                <div class="form-group">
                    <label for="email">Email *</label>
                    <input type="email" id="email" name="email" value="<%= s.getEmail() != null ? s.getEmail() : "" %>" required>
                </div>

                <div class="form-group">
                    <label for="phone">Phone *</label>
                    <input type="text" id="phone" name="phone" value="<%= s.getPhone() != null ? s.getPhone() : "" %>" required>
                </div>

                <div class="form-group">
                    <label for="department">Department *</label>
                    <input type="text" id="department" name="department" value="<%= s.getDepartment() != null ? s.getDepartment() : "" %>" required>
                </div>

                <div class="form-group">
                    <label for="year">Year *</label>
                    <input type="number" id="year" name="year" value="<%= s.getYear() %>" min="1" max="4" required>
                </div>

                <div class="form-group">
                    <label for="address">Address</label>
                    <textarea id="address" name="address"><%= s.getAddress() != null ? s.getAddress() : "" %></textarea>
                </div>

                <button type="submit">Update Student</button>
            </form>
        </div>
    </div>
</body>
</html>


