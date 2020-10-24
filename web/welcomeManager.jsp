<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Manager"%>
<!DOCTYPE html>

<% Manager manager = (Manager) session.getAttribute("manager"); %> 

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1 align="center">Welcome, Manager!</h1>
        
        <h3 align="center"> ID: <%=manager.getM_id()%> </h3>
        <h3 align="center"> YOUR HOTEL ID: <%=manager.getH_id()%> </h3>
        <h3 align="center"> NAME: <%=manager.getName() %></h3>
        <h3 align="center"> SURNAME: <%=manager.getSurname()%></h3>
        <h3 align="center"> USERNAME: <%=manager.getUsername()%> </h3>
        <h3 align="center"> PASSWORD: <%=manager.getPassword()%> </h3>  
        
        <p align="center"><a href="mainM.jsp">Let's get started!</a></p>
        <table align="center" border="1"> 
            <td><button><a href="LogOutM">Log Out</a></button></td>
        </table>
    </body>
</html>
