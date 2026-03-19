<%@ page import="java.util.List"%>
<%@ page import="com.SMS.model.Marks"%>

<%
List<Marks> marks = (List<Marks>)request.getAttribute("marks");
%>

<!DOCTYPE html>
<html>
<head>

<title>View Marks</title>

<style>

body{
font-family:Segoe UI;
background:#f4f6f8;
padding:40px;
}

h2{
text-align:center;
margin-bottom:30px;
}

table{
width:80%;
margin:auto;
border-collapse:collapse;
background:white;
box-shadow:0 5px 15px rgba(0,0,0,0.2);
}

th{
background:#3498db;
color:white;
padding:12px;
}

td{
padding:12px;
text-align:center;
border-bottom:1px solid #ddd;
}

tr:hover{
background:#f2f2f2;
}

a{
display:block;
text-align:center;
margin-top:20px;
text-decoration:none;
color:#3498db;
}

</style>

</head>

<body>

<h2>Student Marks</h2>

<table>

<tr>
<th>ID</th>
<th>Student ID</th>
<th>Subject</th>
<th>Mark</th>
</tr>

<% if(marks!=null){
for(Marks m:marks){ %>

<tr>

<td><%=m.getId()%></td>
<td><%=m.getStudentId()%></td>
<td><%=m.getSubject()%></td>
<td><%=m.getMark()%></td>

</tr>

<% }} %>

</table>

<a href="dashboard.jsp">← Back to Dashboard</a>

</body>
</html>