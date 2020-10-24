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
                
        <form action="HotelListTown" action="post">
        <h2 align="center">Search hotels by town</h2>
        <table align="center" border="1">
            <tr>
                    <td>Enter town name: </td>
                    <td><input type="text" name="town"></td>
            </tr>
            <tr>
                <td><input type="submit" value="submit"></td>
                <td><input type="reset" value="reset"></td>
            </tr>
        </table>
        </form>
        
        <form action="HotelListState" action="post">
        <h2 align="center">Search hotels by state</h2>
        <table align="center" border="1">
            <tr>
                    <td>Enter state name: </td>
                    <td><input type="text" name="state"></td>
            </tr>
            <tr>
                <td><input type="submit" value="submit"></td>
                <td><input type="reset" value="reset"></td>
            </tr>
        </table>
        </form>
        
        
        <h2 align="center">Show all hotels</h2>
        <table align="center" border="1">
            <tr>
                <td><button><a href="AllHotels">All hotels</a></button></td>
            </tr>
        </table>
        
        
        <h2 align="center">Show my reservations</h2>
        <table align="center" border="1">
            <tr>
            <form action="ReservationList" method="post"><td><button>Your reservations</button></td></form>
            </tr>
        </table>
        <br>
        <table align="center" border="1">
            <td><button><a href="LogOutU">Log Out</a></button></td>
        </table>
    </body>
</html>
