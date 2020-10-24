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
                
        <form action="HotelList" method="post">
            <table align="center" border="1"> 
                <td><button>Hotels</button></td>
            </table>   
        </form>
        <form action="RoomList" method="post">
            <table align="center" border="1">
                <td><button>Rooms</button></td>
            </table>
        </form>
        <form action="ManagerList" method="post">
            <table align="center" border="1">
                <td><button>Managers</button></td>
            </table>
        </form>
        <form action="UserList" method="post">
            <table align="center" border="1">
                <td><button>Users</button></td>
            </table>
        </form>
            <table align="center" border="1">
                <td><button><a href="LogOutA">Log Out</a></button></td>
            </table>
    </body>
</html>
