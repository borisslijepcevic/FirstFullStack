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
                Manager
                <%
                }

            %>
        </h2>
        <form action="ManagerLogIn" method="post">
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
                <td><input type="submit" value="submit"></td>
                <td><input type="reset" value="reset"></td>
            </tr>
            </table>
            <p align="center"><a href="index.jsp">Index</a></p>
        </form>
    </body>
</html>
