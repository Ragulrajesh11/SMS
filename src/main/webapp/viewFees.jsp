<%@ page import="java.util.List"%>
<%@ page import="com.SMS.model.Fee"%>

<%
List<Fee> fees = (List<Fee>)request.getAttribute("fees");
%>

<!DOCTYPE html>
<html>
<head>

<title>View Fees</title>

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
background:#2ecc71;
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

<h2>Student Fees</h2>

<table>

<tr>
<th>ID</th>
<th>Student ID</th>
<th>Amount</th>
</tr>

<% if(fees!=null){ 
for(Fee f:fees){ %>

<tr>

<td><%=f.getId()%></td>
<td><%=f.getStudentId()%></td>
<td><%=f.getAmount()%></td>

</tr>

<% }} %>

</table>

<a href="dashboard.jsp">← Back to Dashboard</a>

</body>
</html>