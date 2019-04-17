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
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Pyl Walker
 */
public class ConnectDB {
    public Connection conn;

    public Connection getConn() {
        return conn;
    }

    public void setConn(Connection conn) {
        this.conn = conn;
    }
    
    public ConnectDB(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://127.0.0.1:3306/quanlynhansu?useUnicode=true&characterEncoding=UTF-8";
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
    
    public ResultSet getNhanVien(){
        try{
            ResultSet rs = null;
            PreparedStatement ps = getConn().prepareStatement("select * from tbl_nhanvien");
            rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            System.out.println("Wrong SQL");
            return null;
        }
    }
    
    public int addNhanVien(int MaNV, String HoTen, String NgaySinh, String DiaChi, String GioiTinh, String PhongBan, String ChucVu){
        try{
            int tmp = -1;
            PreparedStatement ps = getConn().prepareStatement("insert into tbl_nhanvien values(?,?,?,?,?,?,?)");
            ps.setInt(1, MaNV);
            ps.setString(2, HoTen);
            ps.setString(3, NgaySinh);
            ps.setString(4, DiaChi);
            ps.setString(5, GioiTinh);
            ps.setString(6, PhongBan);
            ps.setString(7, ChucVu);
            System.out.println(MaNV + HoTen);
            tmp = ps.executeUpdate();
            return tmp;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return -1;
        }
    }
    
    public ResultSet getNhanVienByMaNV(int MaNV){
        try{
            ResultSet rs = null;
            PreparedStatement ps = getConn().prepareStatement("select * from tbl_nhanvien where MaNV = ?");
            ps.setInt(1, MaNV);
            rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            System.out.println("Wrong SQL");
            return null;
        }
    }
    
    public int editNhanVien(int MaNV, String HoTen, String NgaySinh, String DiaChi, String GioiTinh, String PhongBan, String ChucVu){
        try{
            int tmp = -1;
            PreparedStatement ps = getConn().prepareStatement("update tbl_nhanvien set HoTen = ?, NgaySinh = ?, DiaChi = ?, GioiTinh = ?, PhongBan = ?, ChucVu = ? where MaNV = ?");
            ps.setString(1, HoTen);
            ps.setString(2, NgaySinh);
            ps.setString(3, DiaChi);
            ps.setString(4, GioiTinh);
            ps.setString(5, PhongBan);
            ps.setString(6, ChucVu);
            ps.setInt(7, MaNV);
            tmp = ps.executeUpdate();
            return tmp;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return -1;
        }
    }
    
    public int deleteNhanVien(int MaNV){
        try{
            int tmp = -1;
            PreparedStatement ps = getConn().prepareStatement("delete from tbl_nhanvien where MaNV = ?");
            ps.setInt(1, MaNV);
            tmp = ps.executeUpdate();
            return tmp;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return -1;
        }
    }
}
