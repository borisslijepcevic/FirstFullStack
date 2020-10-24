<%@page import="java.util.ArrayList"%>
<%@page import="beans.Rooms"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="overflow: scroll"> 
        
         <% ArrayList<Rooms> list= (ArrayList<Rooms>) request.getAttribute("list"); %>
         
         <h2 align="center">Rooms list:</h2> 
        <table align="center" width="40" border='1'>
            
            <tr align="center">
         
                <td>Room ID</td>
                <td>Room type</td>
                <td>Hotel name</td>
                <td>Town</td>
                <td>State</td>
                
            </tr>
            <% for(Rooms r:list)
                {
                %>
                <tr align="left">
                    
                    <td><%=r.getR_id()%></td>
                    <td><%=r.getRoomType()%></td>
                    <td><%=r.getName()%></td>
                    <td><%=r.getTown()%></td>
                    <td><%=r.getState()%></td>
            </tr>
            <%
                }
            %>
        </table>
        <form action="Reservation" method="post">
            
            <h2 align="center">Make reservation:</h2>
            
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
                    <td>Arrival date: </td>
                    <td><input type="date" name="arrival" size="30"></td>
                </tr>
                <tr>
                    <td>Away date: </td>
                    <td><input type="date" name="away" size="30"></td>
                </tr>                
                <tr>
                    <td colspan="2"><input type="submit" value="confirm"></td>
                </tr>
            </table> 
        </form>
        <p align="center"><a href="mainU.jsp">BACK</a></p>
    </body>
</html>
