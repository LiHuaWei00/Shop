package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by Huazi on 2017/10/12.
 */
public class DBconnection {
    public Connection conn;
    public Connection getConn() {
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/shop";
        String username = "root";
        String password = "huazi123";
        conn = null;
        try {
            Class.forName(driver); //classLoader,加载对应驱动
            try {
                conn = DriverManager.getConnection(url,username, password);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return conn;
    }
    public void close(){
        try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
