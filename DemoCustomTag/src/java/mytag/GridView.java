/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mytag;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author Pyl Walker
 */
public class GridView extends SimpleTagSupport {

    private String driver;
    private String url;
    private String sql;

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();        
        try {
            // TODO: insert code to write html before writing the body content.
            // e.g.:
//            out.println("driver " + driver);
//            out.println("url " + url);
//            out.println("sql " + sql);
            out.println("<strong>My GridView</strong>");
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            ResultSetMetaData metaData = rs.getMetaData();
            int columnCount = metaData.getColumnCount();
            out.println("<table border='0'>");
            out.println("<tr>");
            for(int i = 1;i<=columnCount;i++){
                out.println("<th>");
                out.println(metaData.getColumnName(i));
                out.println("</th>");
            }
            out.println("</tr>");
            while(rs.next()){
                out.println("<tr>");
                String value = null;
                for(int i = 1;i<=columnCount;i++){
                    switch(metaData.getColumnType(i)){
                        case Types.INTEGER:
                            value = String.valueOf(rs.getInt(metaData.getColumnName(i)));
                            break;
                        case Types.FLOAT:
                            value = String.valueOf(rs.getFloat(metaData.getColumnName(i)));
                            break;
                        case Types.DOUBLE:
                        case Types.REAL:
                            value = String.valueOf(rs.getFloat(metaData.getColumnName(i)));
                            break;
                        case Types.DATE:
                        case Types.TIME:
                        case Types.TIMESTAMP:
                            value = String.valueOf(rs.getDate(metaData.getColumnName(i)));
                            break;
                        default:
                            value = rs.getString(metaData.getColumnName(i));
                            break;
                    }
                    out.println("<td>");
                    out.println(value);
                    out.println("</td>");
                }
                out.println("</tr>");
            }
            out.println("</table>");
            
            
            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
        } catch (java.io.IOException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void setDriver(String driver) {
        this.driver = driver;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setSql(String sql) {
        this.sql = sql;
    }
    
}