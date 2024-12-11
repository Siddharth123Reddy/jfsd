<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%
Employee emp = (Employee)session.getAttribute("employee");
if(emp==null)
{
  response.sendRedirect("empsessionexpiry");
  return;
}
%>

<html>
<head>
<meta charset="UTF-8">
<title>Employee Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f9;
    }
    .dashboard {
        max-width: 1200px;
        margin: 20px auto;
        padding: 20px;
        background: #fff;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .dashboard h1 {
        text-align: center;
        color: #333;
    }
    .box-container {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: space-between;
        margin-top: 20px;
    }
    .box {
        flex: 1;
        min-width: 280px;
        padding: 20px;
        background-color: #007BFF;
        color: #fff;
        text-align: center;
        border-radius: 8px;
        transition: transform 0.3s, box-shadow 0.3s;
    }
    .box:hover {
        transform: translateY(-5px);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    .box h2 {
        font-size: 2rem;
        margin-bottom: 10px;
    }
    .box p {
        font-size: 1.2rem;
    }
</style>
</head>
<body>
<%@include file="empnavbar.jsp" %>
<div class="dashboard">
    <h1>Welcome, <%= emp.getName() %>!</h1>
    <div class="box-container">
        <div class="box">
            <h2>Projects</h2>
            <p>5 Active Projects</p>
        </div>
        <div class="box">
            <h2>Team Members</h2>
            <p>12 Members in Your Team</p>
        </div>
        <div class="box">
            <h2>Tasks</h2>
            <p>8 Pending Tasks</p>
        </div>
        <div class="box">
            <h2>Notifications</h2>
            <p>3 New Messages</p>
        </div>
        <div class="box">
            <h2>Attendance</h2>
            <p>95% This Month</p>
        </div>
    </div>
</div>
</body>
</html>