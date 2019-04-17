/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ketnoitintuc;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/** 
 *
 * @author CongBV
 */
public class ketnoitintuc {
    public Connection cn;
    
    public ketnoitintuc() {
        connect();
    }
    
    public void connect() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://127.0.0.1:3306/quanlytintuc";
            try {
                cn = DriverManager.getConnection(url, "root", "");
                System.out.println("Kết nối thành công");
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
    }
    
    public ResultSet gettintuc() {
        try {
            java.sql.Statement st = cn.createStatement();
            ResultSet rs = (ResultSet) st.executeQuery("select * from tbl_news");
            return rs;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }
    
    public int inserttintuc(int mtt, String td, String tt, String nd) {
        int result = -1;
        try {
            PreparedStatement pst = cn.prepareStatement("insert into tbl_news values(?,?,?,?)");
            pst.setInt(1, mtt);
            pst.setString(2, td);
            pst.setString(3, tt);
            pst.setString(4, nd);
            result = pst.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            return result;
        }
    }
    
    public ResultSet gettintucbyid(int mtt) {
            
        try {
            java.sql.Statement st = cn.createStatement();
            ResultSet rs = (ResultSet) st.executeQuery("select * from tbl_news where matintuc = "+mtt);
            return rs;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
        
    }
    
    public int updatetintuc(int mtt, String td, String tt, String nd) {
        int result = -1;
        try {
            PreparedStatement pst = cn.prepareStatement("update tbl_news set tieude = ?, tomtat = ?, noidung = ? where matintuc = ?");
            pst.setString(1, td);
            pst.setString(2, tt);
            pst.setString(3, nd);
            pst.setInt(4, mtt);
            result = pst.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            return result;
        }
    }
    
    public int deletetintuc(int mtt) {
        int result = -1;
        try {
            PreparedStatement pst = cn.prepareStatement("delete from tbl_news where matintuc = "+mtt);
            result = pst.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            return result;
        }
    }
    
}
