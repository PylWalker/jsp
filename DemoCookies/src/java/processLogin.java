/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Pyl Walker
 */
@WebServlet(urlPatterns = {"/processLogin"})
public class processLogin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession mysession = request.getSession();
        try{
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet processLogin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet processLogin at " + request.getContextPath() + "</h1>");
            Date createTimeSession = new Date(mysession.getCreationTime());
            Date lastTime = new Date(mysession.getLastAccessedTime());
            out.println("Session ID: " + mysession.getId());
            out.println("<br>Create Session: " + createTimeSession.toString());
            out.println("<br>Create Session: " + lastTime.toString());
            mysession.setMaxInactiveInterval(5);
            out.println("<br>Max Age: " + mysession.getMaxInactiveInterval());
            String userName = request.getParameter("txtUserName");
            String passWord=request.getParameter("txtPassword");
            ServletContext ctx = getServletContext();
            if(userName.equals("user01")){
                mysession.setAttribute("userName", userName);
                RequestDispatcher dispatcher = ctx.getRequestDispatcher("/index.jsp");
                dispatcher.include(request, response);
            }
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
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
