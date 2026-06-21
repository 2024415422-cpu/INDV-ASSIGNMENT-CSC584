<%-- 
    Document   : viewProfile
    Created on : Jun 21, 2026, 3:02:02 PM
    Author     : nursy
--%>

<%@page import="java.sql.*"%>
<%@page import="controller.DBConnection"%>

<!DOCTYPE html>
<html>
<head>
    <title>Student Profile Management System</title>
    <link rel="stylesheet" href="style.css">

    <style>
        h1{
            text-align:center;
            color:#660000;
        }

        .search-box{
            text-align:center;
            margin:20px 0;
        }

        .search-box input{
            width:220px;
            padding:10px;
            border-radius:10px;
            border:1px solid #ddd;
        }

        .search-box button{
            width:120px;
            padding:10px;
            background:#ff3366;
            color:white;
            border:none;
            border-radius:20px;
            cursor:pointer;
            margin-left:5px;
        }

        .bottom-btn{
            text-align:center;
            margin-top:20px;
        }

        .bottom-btn button{
            width:220px;
            background:#ff3366;
            color:white;
            padding:12px;
            border:none;
            border-radius:20px;
            cursor:pointer;
        }
    </style>

</head>

<body>

<div class="navbar">
    <a href="index.html">Home</a>
    <a href="viewProfiles.jsp">View Profiles</a>
</div>

<h1>Student Profile Management System</h1>

<div class="search-box">
    <form method="get">

        <label><b>Search by Student ID</b></label>
        <br><br>

        <input type="text" name="search" placeholder="Enter Student ID">

        <button type="submit">
            Search
        </button>

    </form>
</div>

<table>

<tr>
    <th>Student ID</th>
    <th>Name</th>
    <th>Programme</th>
    <th>Email</th>
    <th>Hobbies</th>
    <th>Introduction</th>
</tr>

<%
try{

    Connection con = DBConnection.getConnection();

    if(con == null){
        out.println("<tr><td colspan='6'>Database Connection Failed</td></tr>");
    }
    else{

        Statement stmt = con.createStatement();

        String search = request.getParameter("search");

        ResultSet rs;

        if(search != null && !search.trim().equals("")){

            PreparedStatement ps =
                    con.prepareStatement(
                    "SELECT * FROM Profile WHERE studentID=?");

            ps.setString(1, search);

            rs = ps.executeQuery();

        }
        else{

            rs = stmt.executeQuery(
                    "SELECT * FROM Profile");
        }

        while(rs.next()){
%>

<tr>
    <td><%= rs.getString("studentID") %></td>
    <td><%= rs.getString("name") %></td>
    <td><%= rs.getString("programme") %></td>
    <td><%= rs.getString("email") %></td>
    <td><%= rs.getString("hobbies") %></td>
    <td><%= rs.getString("introduction") %></td>
</tr>

<%
        }

        con.close();
    }

}catch(Exception e){

    out.println("<tr><td colspan='6'>");
    out.println(e.getMessage());
    out.println("</td></tr>");

}
%>

</table>

<div class="bottom-btn">

    <a href="index.html">

        <button>
            Add New Profile
        </button>

    </a>

</div>

</body>
</html>