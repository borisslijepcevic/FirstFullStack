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
        
         <h2 align="center">All rooms list:</h2> 
        <table align="center" width="40" border='1'>
            
            <tr align="center">
                <td>Room ID</td>
                <td>Hotel ID</td>
                <td>Room type</td>
            </tr>
            <% for(Rooms r:list)
                {
                %>
                <tr align="center">
                <td><%=r.getR_id()%></td>
                <td><%=r.getH_id()%></td>
                <td><%=r.getRoomType()%></td> 
            </tr>
            <%
                }
            %>
        </table>
        
        <form action="AddRoomM" method="post">
            <h2 align="left">Add new room:</h2>
           <table border="2" align="left">
                
                <tr>
                    <td>Hotel ID: </td>
                    <td><input type="text" name="h_id" size="30"></td>
                </tr>
                <tr>
                    <td>Room Type: </td>
                    <td><input type="text" name="roomType" size="30"></td>
                </tr>
                 <tr>
                    <td colspan="2"><input type="submit" value="submit"></td>
                </tr>
           </table>
       </form>
            
       <h2 align="right">Remove room:</h2>
       <form action="RemoveRoomM" method="post">
           
           <table border="2" align="right">
               <tr>
                    <td>Enter room ID: </td>
                    <td><input type="text" name="r_id" size="30"></td>
               </tr>
               <tr>
                    <td colspan="2"><input type="submit" value="submit"></td>
               </tr>
           </table>    
       </form>
        <p align="center"><a href="mainM.jsp">BACK</a></p>
    </body>
</html>
