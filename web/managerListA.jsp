<%@page import="beans.Manager"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="overflow: scroll">
        <h2 align="center">
            <%
                String msg=(String)request.getAttribute("msg");
                if(msg!=null){
                %><%=msg%>
                <%
                    }
                %></h2> 
                
        <% ArrayList<Manager> list= (ArrayList<Manager>) request.getAttribute("list"); %>
        
        <table align="center" border='1'>
            
            <tr align="center">
                
                <td>Manager ID</td>
                <td>Hotel ID</td>
                <td>Name</td>
                <td>Surname</td>
                <td>Username</td>
                
            </tr>
            
            <% for(Manager m:list)
                {
                %>
                <tr align="center">
                <td><%=m.getM_id()%></td>
                <td><%=m.getH_id() %></td>
                <td><%=m.getName() %></td>
                <td><%=m.getSurname() %></td>
                <td><%=m.getUsername() %></td>
                
            </tr>
            <%
                }
            %>
            
        </table>

        
        <form action="AddManager" method="post">
            <h2 align="left">Add new Manager:</h2>
           <table border="2" align="left">
                
                <tr>
                    <td>Hotel ID: </td>
                    <td><input type="text" name="h_id" size="30"></td>
                </tr>
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
                    <td><input type="text" name="password" size="30"></td>
                </tr>
                 <tr>
                    <td colspan="2"><input type="submit" value="submit"></td>
                </tr>
           </table>
       </form>
            
       <h2 align="right">Remove Manager:</h2>
       <form action="RemoveManager" method="post">
           
           <table border="2" align="right">
               <tr>
                    <td>Enter Manager username: </td>
                    <td><input type="text" name="username" size="30"></td>
               </tr>
               <tr>
                    <td colspan="2"><input type="submit" value="submit"></td>
               </tr>
           </table>    
       </form>
        <p align="center"><a href="mainA.jsp">BACK</a></p>
    </body>
</html>
