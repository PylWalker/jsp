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

/**
 *
 * @author Pyl Walker
 */
public class ConnectDB {
    private Connection con;
    
    public ConnectDB(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://127.0.0.1:3306/phones";
            try {
                con = DriverManager.getConnection(url, "root", "");
                System.out.println("Kết nối thành công");
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
    }

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }
    
    public ResultSet getProductList(){
        try {
            Statement st;
            st = getCon().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM products");
            return rs;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }
    
    public ResultSet getProductByID(int productID){
        try {
            Statement st;
            st = getCon().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM products WHERE productID = " + productID);
            return rs;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }
    
    public int insertProduct(String productName,int price,int quantity,int year,String manufacturer,String description){
        int result = -1;
        try{
            PreparedStatement ps = getCon().prepareStatement("INSERT INTO products(productName,price,quantity,year,manufacturer,description) VAlUES(?,?,?,?,?,?)");
            ps.setString(1,productName);
            ps.setInt(2, price);
            ps.setInt(3, quantity);
            ps.setInt(4, year);
            ps.setString(5,manufacturer);
            ps.setString(6,description);
            result = ps.executeUpdate();
        } catch(SQLException ex){
            ex.printStackTrace();
        } finally{
            return result;
        }
    }
    
    public int editProduct(int productID,String productName,int price,int quantity,int year,String manufacturer,String description){
        int result = -1;
        try{
            PreparedStatement ps = getCon().prepareStatement("UPDATE products SET productName = ?, price = ?, quantity = ?, year = ?, manufacturer = ?, description = ? WHERE productID = ?");
            ps.setString(1,productName);
            ps.setInt(2, price);
            ps.setInt(3, quantity);
            ps.setInt(4, year);
            ps.setString(5,manufacturer);
            ps.setString(6,description);
            ps.setInt(7, productID);
            result = ps.executeUpdate();
        } catch(SQLException ex){
            ex.printStackTrace();
        } finally{
            return result;
        }
    }
    
    public int deleteProduct(int productID) {
        int result = -1;
        try {
            PreparedStatement pst = getCon().prepareStatement("DELETE FROM products WHERE productID = " + productID);
            result = pst.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            return result;
        }
    }
}
