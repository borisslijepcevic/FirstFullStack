<%@page import="java.util.ArrayList"%>
<%@page import="beans.Reservation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="overflow: scroll">
                
        <% ArrayList<Reservation> list= (ArrayList<Reservation>) request.getAttribute("list"); %>
        
        <h2 align="center">Your reservations:</h2>
        <table align="center" border='1'>
            
            <tr align="center">
                <td>Reservation ID</td>
                <td>Room ID</td>
                <td>Yours ID</td>
                <td>Arrival</td>
                <td>Away</td>
                
            </tr>
            
            <% for(Reservation r:list)
                {
                %>
                <tr align="center">
                <td><%=r.getRes_id() %></td>
                <td><%=r.getR_id() %></td>
                <td><%=r.getId() %></td>
                <td><%=r.getArrival() %></td>
                <td><%=r.getAway()%></td>
            </tr>
            <%
                }
            %>
            
        </table>
            
            <h2 align="center"> Cancel your reservation:</h2>
            <form action="RemoveReservation" method="post">
           
            
            <table border="2" align="center">
                <tr>
                    <td>Room ID: </td>
                    <td><input type="text" name="r_id" size="30"></td>
                </tr>
                <tr>
                    <td>Yours ID: </td>
                    <td><input type="text" name="id" size="30"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="confirm"></td>
                </tr>
            </table> 
            </form>
        <p align="center"><a href="mainU.jsp">BACK</a></p>
    </body>
</html>
