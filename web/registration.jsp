<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2 align="center">
            <%
            String msg=(String)request.getAttribute("msg");
            if(msg!=null){
                %><%=msg%><%
            }
            %>
        </h2>
        
        <h2 align="center">Registration</h2>
        
        <form action="Registration" method="post">
            <table border="2" align="center">
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="name" size="30"></td>
                </tr>
                <tr>
                    <td>Surname: </td>
                    <td><input type="text" name="surname" size="30"></td>
                </tr>
                <tr>
                    <td>Username: </td>
                    <td><input type="text" name="username" size="30"></td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><input type="password" name="password" size="30"></td>
                </tr>                
                <tr>
                    <td colspan="2"><input type="submit" value="confirm"></td>
                </tr>
            </table> 
            <p align="center"><a href="index.jsp">Back</a></p>
        </form>
    </body>
</html>
