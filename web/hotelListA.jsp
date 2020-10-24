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

        
        <form action="AddHotel" method="post">
            <h2 align="left">Add new Hotel:</h2>
           <table border="2" align="left">
                
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="name" size="30"></td>
                </tr>
                <tr>
                    <td>Town: </td>
                    <td><input type="text" name="town" size="30"></td>
                </tr>
                <tr>
                    <td>State: </td>
                    <td><input type="text" name="state" size="30"></td>
                </tr>
                <tr>
                    <td>Phone: </td>
                    <td><input type="text" name="phone" size="30"></td>
                </tr>
                 <tr>
                    <td colspan="2"><input type="submit" value="submit"></td>
                </tr>
           </table>
       </form>
            
       <h2 align="right">Remove hotel:</h2>
       <form action="RemoveHotel" method="post">
           
           <table border="2" align="right">
               <tr>
                    <td>Enter hotel name: </td>
                    <td><input type="text" name="name" size="30"></td>
               </tr>
               <tr>
                    <td colspan="2"><input type="submit" value="submit"></td>
               </tr>
           </table>    
       </form>
        <p align="center"><a href="mainA.jsp">BACK</a></p>
    </body>
</html>
