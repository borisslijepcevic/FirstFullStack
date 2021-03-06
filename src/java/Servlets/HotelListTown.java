package Servlets;

import beans.Hotels;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.sql.*;

public class HotelListTown extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        String dbURL = "jdbc:mysql://localhost/it_exam";
        String user = "root";
        String pass = "";
        
        String town = request.getParameter("town");
        
        ArrayList<Hotels> list=new ArrayList<Hotels>();
        try 
        {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection(dbURL, user, pass);
        stmt=con.createStatement();
        

                String query = "SELECT * FROM hotel WHERE town='"+town+"'";
                ResultSet rs1 = stmt.executeQuery(query);
                
                while(rs1.next())
                {
                    list.add(new Hotels(rs1.getString("h_id"), rs1.getString("name"), rs1.getString("town")
                            ,rs1.getString("state"), rs1.getString("phone")));
                }
                request.setAttribute("list", list);
                request.getRequestDispatcher("hotelListTown.jsp").forward(request, response);

        }
        catch(ClassNotFoundException e){}
        catch(SQLException se){
            String msg = se.getMessage();
            request.setAttribute("msg", msg);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
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


