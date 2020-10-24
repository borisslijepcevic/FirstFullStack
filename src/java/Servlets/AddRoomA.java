package Servlets;


import beans.Rooms;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class AddRoomA extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String dbURL = "jdbc:mysql://localhost/it_exam";
        String user = "root";
        String pass = "";
        
        
        String h_id=request.getParameter("h_id");
        String roomType=request.getParameter("roomType");       
        
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(dbURL, user, pass);
            Statement st = con.createStatement();
            
            String query="INSERT INTO rooms (`h_id`,`roomType`) VALUES"
             + "('"+h_id+"', '"+roomType+"')";
            
            st.executeUpdate(query);
            st.close();
            con.close();
        }
        catch(ClassNotFoundException e){}
        catch(SQLException se)
        {
            String msg = se.getMessage();
            request.setAttribute("msg", msg);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
        request.setAttribute("msg", "Room added!");
        request.getRequestDispatcher("mainA.jsp").forward(request, response); 
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}




