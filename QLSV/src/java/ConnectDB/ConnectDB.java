/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ConnectDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Pyl Walker
 */
public class ConnectDB {
    private Connection conn;

    public Connection getConn() {
        return conn;
    }
    
    public ConnectDB(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://127.0.0.1:3306/qlsv?useUnicode=true&characterEncoding=UTF-8";
            try {
                conn = DriverManager.getConnection(url, "root", "");
                System.out.println("Connected Successfully!");
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Wrong driver!");
        }
    }
    
    public boolean login(String TenTK, String MatKhau){
        try{
            PreparedStatement ps = getConn().prepareStatement("select MatKhau from taikhoan where TenTK = ?");
            ps.setString(1, TenTK);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
               String MatKhau2 = rs.getString("MatKhau");
               if(MatKhau.equals(MatKhau2)){
                   return true;
               } else return false;
            }   
        } catch (SQLException ex) {
            Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return false;
    }
    
    public ResultSet getSinhVien(){
        try{
            PreparedStatement ps = getConn().prepareStatement("select * from sinhvien");
            ResultSet rs = ps.executeQuery();
            return rs;          
        } catch (SQLException ex) {
            Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    public ResultSet getSinhVienByMaSV(int MaSV){
        try{
            PreparedStatement ps = getConn().prepareStatement("select * from sinhvien where MaSV = ?");
            ps.setInt(1, MaSV);
            ResultSet rs = ps.executeQuery();
            return rs;          
        } catch (SQLException ex) {
            Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
   public int editSinhVien(int MaSV, String HoTen, boolean GioiTinh, String SoDienThoai, String DiaChi){
        try{
            int tmp = -1;
            PreparedStatement ps = getConn().prepareStatement("update sinhvien set HoTen = ?, GioiTinh = ?, SoDienThoai = ?, DiaChi = ? where MaSV = ?");
            ps.setString(1, HoTen);
            ps.setBoolean(2, GioiTinh);
            ps.setString(3, SoDienThoai);
            ps.setString(4, DiaChi);
            ps.setInt(5, MaSV);
            tmp = ps.executeUpdate();
            return tmp;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return -1;
        }
    }
   
   public int deleteSinhVien(int MaSV){
        try{
            int tmp = -1;
            PreparedStatement ps = getConn().prepareStatement("delete from sinhvien where MaSV = ?");
            ps.setInt(1, MaSV);
            tmp = ps.executeUpdate();
            return tmp;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return -1;
        }
    }
}
