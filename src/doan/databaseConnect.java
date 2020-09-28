/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package doan;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

/**
 *
 * @author Khanh
 */
public class databaseConnect {

    public static Connection c;
    private static String db_url = "jdbc:mysql://localhost:3306/quanlisinhvien";
    private static String username = "root";
    private static String password = "";

    public static Connection getConnection() throws Exception {
        if (c == null) {
            Class.forName("com.mysql.jdbc.Driver");
            c = DriverManager.getConnection(db_url, username, password);
        }
        return c;
    }

    public static int setData(String sql) throws Exception {
        return databaseConnect.getConnection().createStatement().executeUpdate(sql);
    }

    public static ResultSet getData(String sql) throws Exception {
        ResultSet rs = databaseConnect.getConnection().createStatement().executeQuery(sql);
        return rs;
    }
}
