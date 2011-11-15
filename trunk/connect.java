package wh;

import java.sql.*;

public class connect {

    public static Connection getKoneksi() {
        Connection con = null;

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();

        } catch (Exception e) {
        }

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost/rahasia", "root", "");
        } catch (Exception e) {
        }
        return con;
    }
}
