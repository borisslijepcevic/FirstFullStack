package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class Registration extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        
        String dbURL = "jdbc:mysql://localhost/it_exam";
        String user = "root";
        String pass = "";
        
        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection(dbURL, user, pass);
            Statement st=con.createStatement();
            ResultSet rs=null;
            String query="SELECT username FROM user";
            rs=st.executeQuery(query);
            
            while(rs.next())
            {
                if(username.equals(rs.getString("username"))){
                    request.setAttribute("msg", "Username already in use!");
                    request.getRequestDispatcher("registration.jsp").forward(request, response);
                }
            }
            st.close();
            con.close();
            }
            catch(ClassNotFoundException e){}
            catch(SQLException se){
                String msg = se.getMessage();
                request.setAttribute("msg", msg);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            if(name!=null && name.length()>0 && surname!=null && surname.length()>0 && username!=null && username.length()>0
            && password!=null && password.length()>0)
            {
                
                    try 
                        {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection(dbURL, user, pass);
                        Statement st = con.createStatement();
            
                        String query1 = "INSERT INTO user (`name`, `surname`, `username`, `password`) VALUES"
                        + "('"+name+"','"+surname+"','"+username+"','"+password+"')";
                    
                        st.executeUpdate(query1);
                        
                        st.close();
                        con.close();
            
                        request.setAttribute("msg", "Registration complete!");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                        }
                        catch(ClassNotFoundException e){}
                        catch(SQLException se)
                        {
                        String msg = se.getMessage();
                        request.setAttribute("msg", msg);
                        request.getRequestDispatcher("error.jsp").forward(request, response);
                        }
                    
                }       
            else
            {
                request.setAttribute("msg", "Fill all fields!");
                request.getRequestDispatcher("registracija.jsp").forward(request, response);  
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








