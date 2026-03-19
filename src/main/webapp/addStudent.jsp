<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Student</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI;
}

body{
background:linear-gradient(135deg,#667eea,#764ba2);
min-height:100vh;
display:flex;
justify-content:center;
align-items:center;
padding:20px;
}

.container{
width:600px;
background:white;
padding:35px;
border-radius:12px;
box-shadow:0 15px 35px rgba(0,0,0,0.3);
}

h2{
text-align:center;
margin-bottom:25px;
color:#667eea;
}

.form-group{
margin-bottom:15px;
}

label{
font-weight:bold;
display:block;
margin-bottom:5px;
}

input,select,textarea{
width:100%;
padding:10px;
border-radius:6px;
border:1px solid #ccc;
font-size:14px;
}

input:focus,select:focus,textarea:focus{
border-color:#667eea;
outline:none;
}

button{
width:100%;
padding:14px;
background:#667eea;
border:none;
color:white;
font-size:16px;
border-radius:6px;
margin-top:10px;
cursor:pointer;
transition:0.3s;
}

button:hover{
background:#5563d6;
transform:scale(1.02);
}

.back{
display:inline-block;
margin-bottom:15px;
text-decoration:none;
background:#3498db;
color:white;
padding:8px 14px;
border-radius:5px;
}

.back:hover{
background:#2c80b4;
}

.error{
background:#ffebee;
color:#d32f2f;
padding:10px;
margin-bottom:15px;
border-radius:5px;
text-align:center;
}

</style>

</head>

<body>

<div class="container">

<a href="index.jsp" class="back">← Back</a>

<h2>Add Student</h2>

<% if(request.getParameter("error")!=null){ %>

<div class="error">
Failed to add student. Please try again.
</div>

<% } %>

<form action="<%=request.getContextPath()%>/addStudent" method="post">

<div class="form-group">
<label>First Name</label>
<input type="text" name="firstName" required>
</div>

<div class="form-group">
<label>Last Name</label>
<input type="text" name="lastName" required>
</div>

<div class="form-group">
<label>Gender</label>
<select name="gender" required>
<option value="">Select Gender</option>
<option>Male</option>
<option>Female</option>
<option>Other</option>
</select>
</div>

<div class="form-group">
<label>Date of Birth</label>
<input type="date" name="dob" required>
</div>

<div class="form-group">
<label>Email</label>
<input type="email" name="email" required>
</div>

<div class="form-group">
<label>Phone</label>
<input type="text" name="phone" required>
</div>

<div class="form-group">
<label>Department</label>
<select name="department" required>
<option value="">Select Department</option>
<option>Computer Science</option>
<option>Information Technology</option>
<option>Electronics</option>
<option>Mechanical</option>
<option>Civil</option>
<option>Electrical</option>
</select>
</div>

<div class="form-group">
<label>Year</label>
<select name="year" required>
<option value="">Select Year</option>
<option value="1">1st Year</option>
<option value="2">2nd Year</option>
<option value="3">3rd Year</option>
<option value="4">4th Year</option>
</select>
</div>

<div class="form-group">
<label>Address</label>
<textarea name="address"></textarea>
</div>

<button type="submit">Add Student</button>

</form>

</div>

</body>
</html>