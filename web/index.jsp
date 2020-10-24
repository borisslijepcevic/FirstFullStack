<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String msg=(String)request.getAttribute("msg"); %>
        <h2 align="center">
            <%
            
                if(msg!=null){
                    %><%=msg%><%
                }
                else 
                {
                   %>
                Welcome to online booking
                <%
                }

            %>
        </h2>
        <form action="UserLogIn" method="post">
            <table align="center" border="1">
            <tr>
                    <td>Username: </td>
                    <td><input type="text" name="username"></td>
            </tr>
            <tr>
                    <td>Password: </td>
                    <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td><input type="submit" value="Login"></td>
                <td><input type="reset" value="reset"></td>
            </tr>
            </table>
            <p align="center"><a href="registration.jsp">Registration!</a></p>
        </form>
        <p align="center"><a href="adminLogIn.jsp">Admin</a></p>
        <p align="center"><a href="managerLogIn.jsp">Manager</a></p>
       
    </body>
</html>
