<%@page import="beans.Hotels"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="overflow: scroll">
                
        <% ArrayList<Hotels> list= (ArrayList<Hotels>) request.getAttribute("list"); %>
        <h2 align="center">Hotels:</h2>
        <table align="center" border='1'>
            
            <tr align="center">
                <td>ID</td> 
                <td>NAME</td>
                <td>TOWN</td>
                <td>STATE</td>
                <td>PHONE</td>
                
            </tr>
            
            <% for(Hotels l:list)
                {
                %>
                <tr align="center">
                <td><%=l.getH_id() %></td>
                <td><%=l.getName() %></td>
                <td><%=l.getTown() %></td>
                <td><%=l.getState() %></td>
                <td><%=l.getPhone()%></td>
            </tr>
            <%
                }
            %>
            
        </table>
            
            <form action="RoomListU" method="post">
                <h3 align="center">Insert Hotel ID to see avaiable rooms</h3>
                <table align="center" border="1">
                        <tr>
                            <td>Hotel ID: </td>
                            <td><input type="text" name="h_id"></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="submit"></td>
                            <td><input type="reset" value="reset"></td>
                        </tr>
                </table>
            </form>
        <p align="center"><a href="mainU.jsp">BACK</a></p>
    </body>
</html>
