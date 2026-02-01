<%@ page import="java.util.*,com.SMS.model.Marks" %>
<!DOCTYPE html>
<html>
<head>
<title>View Marks</title>

<style>
body{
    font-family: Arial, sans-serif;
    background: linear-gradient(to right,#e3f2fd,#bbdefb);
    margin:0;
    padding:0;
}

.container{
    width: 700px;
    margin: 60px auto;
    background: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
}

h2{
    text-align:center;
    color:#0d47a1;
    margin-bottom:20px;
}

table{
    width:100%;
    border-collapse: collapse;
    margin-top:20px;
}

th{
    background:#1976d2;
    color:white;
    padding:12px;
    text-align:left;
}

td{
    padding:12px;
    border-bottom:1px solid #ddd;
}

tr:nth-child(even){
    background:#f1f8ff;
}

tr:hover{
    background:#e3f2fd;
}

.no-data{
    text-align:center;
    padding:20px;
    font-weight:bold;
    color:red;
}

.back-btn{
    display:inline-block;
    margin-top:25px;
    text-decoration:none;
    padding:10px 20px;
    background:#1976d2;
    color:white;
    border-radius:6px;
    transition:0.3s;
}

.back-btn:hover{
    background:#0d47a1;
}
</style>

</head>
<body>

<div class="container">
<h2>Student Marks</h2>

<table>
<tr>
    <th>Subject</th>
    <th>Marks</th>
</tr>

<%
List<Marks> list = (List<Marks>)request.getAttribute("marksList");
if(list == null || list.isEmpty()) {
%>
<tr>
    <td colspan="2" class="no-data">No marks found for this student.</td>
</tr>
<% 
} else {
    for(Marks m : list){
%>
<tr>
    <td><%= m.getSubject() %></td>
    <td><%= m.getMark() %></td>
</tr>
<% 
    } 
} 
%>

</table>

<a class="back-btn" href="viewStudents">← Back to Students List</a>

</div>

</body>
</html>
