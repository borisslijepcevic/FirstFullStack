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
                %><%=msg%>
                <%
                    }
                %></h2>
        
        <form action="RoomListM" method="post">
            <h2 align="center">Enter your hotel ID to see rooms list.</h2>
            <table align="center">   
            <tr>
                <td><input type="text" name="h_id"></td>  
                <td><input type="submit" name="submit"></td>
            </tr>
            </table>
            
        </form>
        <table align="center" border="1">
            <td><button><a href="LogOutM">Log Out</a></button></td>
        </table>
    </body>
</html>
