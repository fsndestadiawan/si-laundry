package Laundry;

/**
 *
 * @author dika
 */
import java.sql.*;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Method {

    private HashMap<String, Pelanggan> hash = new HashMap<String, Pelanggan>();
    private Connection con;
    private Statement st;
    private ResultSet rs;

    public boolean tambahUser(String username, String password,
            String nama, String notelp, String alamat) {
        boolean result = true;


        Pelanggan ubaru = new Pelanggan();
        ubaru.setUsername(username);
        ubaru.setPassword(password);
        ubaru.setNama(nama);
        ubaru.setNotelp(notelp);
        ubaru.setAlamat(alamat);

        hash.put(username, ubaru);

        String sql = "INSERT INTO data_pelanggan VALUES ('" + nama + "','" + alamat + "','" + notelp + "','" + username + "','" + password + "');";


        try {
            con = connect.getKoneksi();
            st = con.createStatement();
            st.execute(sql);

        } catch (Exception ex) {
            Logger.getLogger(Method.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public Pelanggan cariUser(String username) {
        Pelanggan ubaru = null;

        if (hash.containsKey(username)) {
            ubaru = hash.get(username);
        } else {
            String sql = "SELECT * FROM data_pelanggan WHERE UPPER(username) "
                    + "like UPPER('%" + username + "%') order by username";

            try {
                con = connect.getKoneksi();
                st = con.createStatement();
                rs = st.executeQuery(sql);
                if (rs.next()) {
                    Pelanggan temp = new Pelanggan();
                    temp.setUsername(rs.getString("username"));

                    ubaru = temp;

                    hash.put(username, temp);
                }
            } catch (Exception ex) {
                Logger.getLogger(Method.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return ubaru;
    }

}
