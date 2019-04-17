package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import Ketnoitintuc.ketnoitintuc;

public final class danhsachtintuc_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Danh sách tin tức</title>\n");
      out.write("    </head>\n");
      out.write("    ");

        ketnoitintuc kntt = new ketnoitintuc();
        ResultSet rs = (ResultSet) kntt.gettintuc();
     
    
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <table style=\"border: 1px solid black;\" align=\"center\">\n");
      out.write("            <tr style=\"padding: 10px 10px 10px 10px;\">\n");
      out.write("                <th colspan=\"6\"><h2>Danh sách tin tức</h2></th>\n");
      out.write("            </tr>\n");
      out.write("            <tr style=\"padding: 10px 10px 10px 10px;\">\n");
      out.write("                <th>Mã tin tức</th>\n");
      out.write("                <th>Tiêu đề</th>\n");
      out.write("                <th>Tóm tắt</th>\n");
      out.write("                <th>Nội dung</th>\n");
      out.write("                <th>Thao tác</th>\n");
      out.write("                <th>Xem</th>\n");
      out.write("            </tr>\n");
      out.write("            ");
 while(rs.next()) { 
      out.write("\n");
      out.write("            <tr style=\"padding: 10px 10px 10px 10px;\">\n");
      out.write("                <td style=\"padding: 10px 10px 10px 10px; border: 1px black;\" align=\"center\">");
 out.println(rs.getInt("matintuc")); 
      out.write("</td>\n");
      out.write("                <td style=\"padding: 10px 10px 10px 10px; border: 1px black;\" align=\"center\">");
 out.println(rs.getString("tieude")); 
      out.write("</td>\n");
      out.write("                <td style=\"padding: 10px 10px 10px 10px; border: 1px black;\" align=\"center\">");
 out.println(rs.getString("tomtat")); 
      out.write("</td>\n");
      out.write("                <td style=\"padding: 10px 10px 10px 10px; border: 1px black;\" align=\"center\">");
 out.println(rs.getString("noidung")); 
      out.write("</td>\n");
      out.write("                <td style=\"padding: 10px 10px 10px 10px; border: 1px black;\">\n");
      out.write("                    <a href=\"formsuatintuc.jsp?matintuc=");
      out.print( rs.getInt("matintuc") );
      out.write("\">Sửa</a> / \n");
      out.write("                    <a href=\"xoatintuc.jsp?matintuc=");
      out.print( rs.getInt("matintuc") );
      out.write("\" onclick=\"return confirm('Bạn có chắc muốn xóa ?')\">Xóa</a>\n");
      out.write("                </td>\n");
      out.write("                <td style=\"padding: 10px 10px 10px 10px; border: 1px black;\"><a href=\"chitiettintuc.jsp?matintuc=");
      out.print( rs.getInt("matintuc") );
      out.write("\">Xem chi tiết</a></td>\n");
      out.write("            </tr>\n");
      out.write("            ");
 } 
      out.write("\n");
      out.write("            <tr style=\"padding: 10px 10px 10px 10px;\">\n");
      out.write("                <td colspan=\"6\" style=\"padding: 10px 10px 10px 10px; border: 1px black\"><a href=\"formthemtintuc.jsp\">Thêm tin tức</a></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
