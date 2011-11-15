package wh;

/**
 *
 * @author Achmad
 */
import java.sql.*;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

public class NewClass {

    private HashMap<String, user> hash = new HashMap<String, user>();
    private Connection con;
    private Statement st;
    private ResultSet rs;

    public boolean tambahorder(String noorder, String paketorder,
            String waktuambil, String alamatambil) {
        boolean result = true;


        order obaru = new order();
        obaru.setNoorder(noorder);
        obaru.setPaketorder(paketorder);
        obaru.setWaktuambil(waktuambil);
        obaru.setAlamatambil(alamatambil);


       // hash.put(username, ubaru);

        String sql = "INSERT INTO order_baru VALUES ('" + noorder + "','" + paketorder + "','" + waktuambil + "','" + alamatambil + "');";


        try {
            con = connect.getKoneksi();
            st = con.createStatement();
            st.execute(sql);

        } catch (Exception ex) {
            Logger.getLogger(NewClass.class.getName()).log(Level.SEVERE, null, ex);

        } finally {
            try {
                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(NewClass.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return result;
    }
}
