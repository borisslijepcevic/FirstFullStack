<%@page import="beans.User"%>
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
                
        <% ArrayList<User> list= (ArrayList<User>) request.getAttribute("list"); %>
        
        <table align="center" border='1'>
            
            <tr align="center">
                
                <td>User ID</td>
                <td>Name</td>
                <td>Surname</td>
                <td>Username</td>
                
            </tr>
            
            <% for(User u:list)
                {
                %>
                <tr align="center">
                <td><%=u.getId()%></td>
                <td><%=u.getName() %></td>
                <td><%=u.getSurname() %></td>
                <td><%=u.getUsername() %></td>
                
            </tr>
            <%
                }
            %>
            
        </table>

        
        <form action="AddUser" method="post">
            <h2 align="left">Add new User:</h2>
           <table border="2" align="left">
                
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
            
       <h2 align="right">Remove User:</h2>
       <form action="RemoveUser" method="post">
           
           <table border="2" align="right">
               <tr>
                    <td>Enter User username: </td>
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
