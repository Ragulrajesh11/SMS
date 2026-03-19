<%@ page import="java.util.List" %>
<%@ page import="com.SMS.model.Student" %>

<%
    List<Student> students = (List<Student>) request.getAttribute("students");
%>

<!DOCTYPE html>
<html>
<head>
<title>View Students</title>

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
padding:40px;
}

.container{
background:white;
padding:30px;
border-radius:12px;
box-shadow:0 15px 35px rgba(0,0,0,0.3);
}

h2{
text-align:center;
margin-bottom:20px;
color:#667eea;
}

.back-link{
display:inline-block;
margin-bottom:20px;
text-decoration:none;
color:white;
background:#3498db;
padding:8px 14px;
border-radius:6px;
transition:0.3s;
}

.back-link:hover{
background:#2980b9;
}

/* TABLE DESIGN */

table{
width:100%;
border-collapse:collapse;
}

thead{
background:#667eea;
color:white;
}

th,td{
padding:12px;
text-align:center;
border-bottom:1px solid #ddd;
}

tbody tr:hover{
background:#f2f2f2;
}

/* ACTION BUTTONS */

.action-links{
display:flex;
gap:8px;
justify-content:center;
flex-wrap:wrap;
}

.edit-link{
background:#f39c12;
color:white;
padding:6px 12px;
border-radius:5px;
text-decoration:none;
}

.edit-link:hover{
background:#d68910;
transform:scale(1.05);
}

.delete-link{
background:#e74c3c;
color:white;
padding:6px 12px;
border-radius:5px;
text-decoration:none;
}

.delete-link:hover{
background:#c0392b;
transform:scale(1.05);
}

.add-marks-link{
background:#2ecc71;
color:white;
padding:6px 12px;
border-radius:5px;
text-decoration:none;
}

.add-marks-link:hover{
background:#27ae60;
transform:scale(1.05);
}

.view-marks-link{
background:#3498db;
color:white;
padding:6px 12px;
border-radius:5px;
text-decoration:none;
}

.view-marks-link:hover{
background:#2980b9;
transform:scale(1.05);
}

.no-data{
padding:20px;
font-size:18px;
color:red;
}

</style>

</head>

<body>

<div class="container">

<a href="index.jsp" class="back-link">← Back to Home</a>

<h2>📚 Student List</h2>

<table>

<thead>
<tr>
<th>ID</th>
<th>Name</th>
<th>Gender</th>
<th>Department</th>
<th>Year</th>
<th>Email</th>
<th>Phone</th>
<th>Address</th>
<th>Actions</th>
</tr>
</thead>

<tbody>

<% if(students != null && !students.isEmpty()) {
for(Student s : students){ %>

<tr>

<td><%= s.getId() %></td>

<td><%= s.getFirstName() %> <%= s.getLastName() %></td>

<td><%= s.getGender() %></td>

<td><%= s.getDepartment() %></td>

<td><%= s.getYear() %></td>

<td><%= s.getEmail() %></td>

<td><%= s.getPhone() %></td>

<td><%= s.getAddress() %></td>

<td class="action-links">

<a href="editStudent?id=<%= s.getId() %>" class="edit-link">Edit</a>

<a href="deleteStudent?id=<%= s.getId() %>" class="delete-link"
onclick="return confirm('Are you sure you want to delete this student?')">Delete</a>

<a href="addMarks.jsp?studentId=<%= s.getId() %>" class="add-marks-link">Add Marks</a>

<a href="viewMarks?studentId=<%= s.getId() %>" class="view-marks-link">View Marks</a>

</td>

</tr>

<% }} else { %>

<tr>
<td colspan="9" class="no-data">No Students Found</td>
</tr>

<% } %>

</tbody>

</table>

</div>

</body>
</html>