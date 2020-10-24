<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Admin"%>
<!DOCTYPE html>

<% Admin admin = (Admin) session.getAttribute("admin"); %> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">Welcome, admin!</h1>
        
        <h3 align="center"> ID: <%=admin.getAd_id()%> </h3>
        <h3 align="center"> NAME: <%=admin.getName() %></h3>
        <h3 align="center"> SURNAME: <%=admin.getSurname()%></h3>
        <h3 align="center"> USERNAME: <%=admin.getUsername()%> </h3>
        <h3 align="center"> PASSWORD: <%=admin.getPassword()%> </h3>  
        
        
        <p align="center"><a href="mainA.jsp">Let's get started!</a></p>
        <table align="center" border="1">
            <td><button><a href="LogOutA">Log Out</a></button></td>
        </table>
    </body>
</html>
