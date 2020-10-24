package Servlets;

import beans.Manager;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

public class ManagerLogIn extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String msg = "";
        
        HttpSession session = request.getSession();
        
        Manager manager = new Manager();
        manager.setUsername(username);
        manager.setPassword(password);
        session.setAttribute("manager", manager);
        
        if(username.isEmpty() || username.isEmpty()){
            
            msg = "Fill all fields!";
            request.setAttribute("msg", msg);
            request.getRequestDispatcher("managerLogIn.jsp").forward(request, response);
        }
        else {
            Connection con = null;
            Statement stmt = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/it_exam", "root", "");
                stmt = con.createStatement();
                
                String query = "SELECT * FROM manager WHERE username='"+username+"' AND password='"+password+"'";
                rs=stmt.executeQuery(query);
                if(rs.next())
                {
                  String m_id=rs.getString("m_id");
                  String name=rs.getString("name");
                  String surname=rs.getString("surname");
                  
                  manager.setM_id(m_id);
                  manager.setName(name);
                  manager.setSurname(surname);
                  manager.setUsername(username);
                  manager.setPassword(password);
                  
                  stmt.close();
                  rs.close();                  
                }
                else
                {
                    msg = "Insert correct username and password!";
                    request.setAttribute("msg", msg);
                    stmt.close();
                    rs.close();
                    request.getRequestDispatcher("managerLogIn.jsp").forward(request, response);
                }
                    request.setAttribute("msg", "Wellcome, Manager");
                    request.getRequestDispatcher("welcomeManager.jsp").forward(request, response);
                    
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






