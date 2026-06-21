<%-- 
    Document   : profile
    Created on : May 20, 2026, 3:32:20 PM
    Author     : nursy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Result</title>
        
        <link rel="stylesheet" href="style.css">
    </head>
    
    <body>
        
    <div class="navbar">
    <a href="index.html">Home</a>
    <a href="viewProfiles.jsp">View Profiles</a>
    </div>
        
    <div class="container-box">

        <h1>Student Profile Information</h1>

        <div class="info">
            <span class="label">Name:</span> ${name}
        </div>

        <div class="info">
            <span class="label">Student ID:</span> ${studentId}
        </div>

        <div class="info">
            <span class="label">Program:</span> ${program}
        </div>

        <div class="info">
            <span class="label">Email:</span> ${email}
        </div>

        <div class="info">
            <span class="label">Hobbies:</span> ${hobbies}
        </div>

        <div class="info">
            <span class="label">Self Introduction:</span> ${intro}
        </div>

    </div>
       
    <div style="text-align:center; margin-top:20px;">
    <a href="index.html">Add New Profile</a> |
    <a href="viewProfiles.jsp">View All Profiles</a>
    </div>
        
    </body>
</html>
