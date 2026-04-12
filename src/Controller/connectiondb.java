package Controller;

import java.sql.*;

public class connectiondb {
    private Connection koneksi;
    
    public Connection connect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            System.out.println("Gagal memuat driver: " + ex);
        }
        
        String url = "jdbc:mysql://localhost:3306/penjualan";
        
        try {
            koneksi = DriverManager.getConnection(url, "root", "");
            System.out.println("Berhasil koneksi database");
        } catch (SQLException ex) {
            System.out.println("Gagal koneksi database: " + ex);
        }
        
        return koneksi;
    }
}