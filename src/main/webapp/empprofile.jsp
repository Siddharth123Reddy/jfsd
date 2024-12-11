<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Employee emp = (Employee)session.getAttribute("employee");
if(emp==null)
{
  response.sendRedirect("empsessionexpiry");
  return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Profile</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f8f9fa;
        color: #333;
    }
    .container {
        max-width: 800px;
        margin: 40px auto;
        padding: 20px;
        background: #ffffff;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    h3 {
        text-align: center;
        color: #007BFF;
        margin-bottom: 20px;
    }
    .profile-box {
        display: grid;
        grid-template-columns: 1fr;
        gap: 20px;
        padding: 20px;
        background-color: #f1f3f5;
        border-radius: 10px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .profile-item {
        display: flex;
        justify-content: space-between;
        padding: 10px;
        background-color: #ffffff;
        border: 1px solid #e0e0e0;
        border-radius: 8px;
        font-size: 1rem;
    }
    .profile-item b {
        color: #007BFF;
    }
</style>
</head>
<body>
<%@include file="empnavbar.jsp" %>

<div class="container">
    <h3><u>My Profile</u></h3>
    <div class="profile-box">
        <div class="profile-item">
            <b>ID:</b>
            <span><%=emp.getId()%></span>
        </div>
        <div class="profile-item">
            <b>Name:</b>
            <span><%=emp.getName()%></span>
        </div>
        <div class="profile-item">
            <b>Gender:</b>
            <span><%=emp.getGender()%></span>
        </div>
        <div class="profile-item">
            <b>Date of Birth:</b>
            <span><%=emp.getDateofbirth()%></span>
        </div>
        <div class="profile-item">
            <b>Department:</b>
            <span><%=emp.getDepartment()%></span>
        </div>
        <div class="profile-item">
            <b>Location:</b>
            <span><%=emp.getLocation()%></span>
        </div>
        <div class="profile-item">
            <b>Email:</b>
            <span><%=emp.getEmail()%></span>
        </div>
        <div class="profile-item">
            <b>Contact:</b>
            <span><%=emp.getContact()%></span>
        </div>
        <div class="profile-item">
            <b>Status:</b>
            <span><%=emp.getStatus()%></span>
        </div>
    </div>
</div>

</body>
</html>