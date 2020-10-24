<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>
<!DOCTYPE html>

<% User user = (User) session.getAttribute("user"); %>    
        
        
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">Welcome to online booking!</h1>
        
        <h3 align="center"> ID: <%=user.getId()%> </h3>
        <h3 align="center"> NAME: <%=user.getName() %></h3>
        <h3 align="center"> SURNAME: <%=user.getSurname()%></h3>
        <h3 align="center"> USERNAME: <%=user.getUsername()%> </h3>
        <h3 align="center"> PASSWORD: <%=user.getPassword()%> </h3>
        
        <p align="center"><a href="mainU.jsp">Let's get started!</a></p>
        <table align="center" border="1">
            <td><button><a href="LogOutU">Log Out</button></td>
        </table>
    </body>
</html>
