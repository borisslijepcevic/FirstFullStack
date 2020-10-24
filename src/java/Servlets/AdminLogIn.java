package Servlets;

import beans.Admin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

public class AdminLogIn extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String msg = "";
        
        HttpSession session = request.getSession();
        
        Admin admin = new Admin();
        admin.setUsername(username);
        admin.setPassword(password);
        session.setAttribute("admin", admin);
        
        if(username.isEmpty() || password.isEmpty()){
            
            msg = "Fill all fields!";
            request.setAttribute("msg", msg);
            request.getRequestDispatcher("adminLogIn.jsp").forward(request, response);
        }
        else {
            
            Connection con = null;
            Statement stmt = null;
            ResultSet rs = null;
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/it_exam", "root", "");
                stmt = con.createStatement();
                
                String query = "SELECT * FROM admin WHERE username='"+username+"' AND password='"+password+"'";
                rs=stmt.executeQuery(query);
                if(rs.next())
                {
                  String ad_id=rs.getString("ad_id");
                  String name=rs.getString("name");
                  String surname=rs.getString("surname");
                  
                  admin.setAd_id(ad_id);
                  admin.setName(name);
                  admin.setSurname(surname);
                  admin.setUsername(username);
                  admin.setPassword(password);
                  
                  stmt.close();
                  rs.close();                  
                }
                else
                {
                    msg = "Insert correct username and password!";
                    request.setAttribute("msg", msg);
                    stmt.close();
                    rs.close();
                    request.getRequestDispatcher("adminLogIn.jsp").forward(request, response);
                }
                    request.setAttribute("msg", "Welcome, Admin!");
                    request.getRequestDispatcher("welcomeAdmin.jsp").forward(request, response);
                    
            }
            catch (ClassNotFoundException e){}
            catch (SQLException sqle){
                session.invalidate();
                String errormsg=sqle.getMessage();
                if(con!=null)
                    
                try{
                    con.close();
                }
                catch (Exception ex){
                    errormsg+=ex.getMessage();
                }
                request.setAttribute("errormsg", errormsg);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
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















