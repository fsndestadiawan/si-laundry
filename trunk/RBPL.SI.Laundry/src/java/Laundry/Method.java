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

    public boolean cekLogin(String username, String password){
        boolean result = true;
        try {
            con = connect.getKoneksi();
            st = con.createStatement();
            rs = st.executeQuery("select count(*) as jumlah from data_pelanggan where username='" + username + "' and password='" + password + "'");
            rs.next();
            int jumlah = rs.getInt("jumlah");
            if (jumlah == 0) {
                return false;
            }

        } catch (Exception ex) {
            Logger.getLogger(Method.class.getName()).log(Level.SEVERE, null, ex);
        }finally {
            try {
                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(Method.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return result;
    }

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
            Logger.getLogger(Method.class.getName()).log(Level.SEVERE, null, ex);

        } finally {
            try {
                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(Method.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return result;
    }

     public boolean tambahpaketlaundry(String namapaket, String harga, String keterangan) {
        boolean result = true;


        paketlaundry pbaru = new paketlaundry();
        pbaru.setNamapaket(namapaket);
        pbaru.setHarga(harga);
        pbaru.setKeterangan(keterangan);


     

        String sql = "INSERT INTO paketlaundry VALUES ('" + namapaket + "','" + harga + "','" + keterangan + "');";


        try {
            con = connect.getKoneksi();
            st = con.createStatement();
            st.execute(sql);

        } catch (Exception ex) {
            Logger.getLogger(Method.class.getName()).log(Level.SEVERE, null, ex);

        } finally {
            try {
                st.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(Method.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return result;
    }

}
