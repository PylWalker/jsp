
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Pyl Walker
 */
@WebServlet(name="processHello",urlPatterns={"/processHello"})
public class processHello extends HttpServlet{
    protected void processRequest(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet processHello</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet processHello at " + request.getContextPath() + "</h1>");
            String name = request.getParameter("txtName");
            out.println("Hello " + name);
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
        processRequest(request,response);
    }
    
    @Override
    public String getServletInfo(){
        return "Short description";
    }
}
