package Laundry;

/**
 *
 * @author dika
 */

import java.sql.*;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Method {

    private HashMap<String, Pegawai> mem = new HashMap<String, Pegawai>();
    private HashMap<String, Pelanggan> hash = new HashMap<String, Pelanggan>();
    private Connection con;
    private Statement st;
    private ResultSet rs;

    public boolean tambahPeg(String nip, String password,
            String nama, String notelp, String alamat) {
        boolean result = true;


        Pegawai ubaru = new Pegawai();
        ubaru.setNip(nip);
        ubaru.setPassword(password);
        ubaru.setNama(nama);
        ubaru.setNotelp(notelp);
        ubaru.setAlamat(alamat);

        mem.put(nip, ubaru);

//String sql = "INSERT INTO data_pelanggan VALUES ('" + nama + "','" + alamat + "','" + notelp + "','" + username + "','" + password + "');";
String sql = "INSERT INTO data_pegawai (nip, password, nama, notelp, alamat) VALUES ('" + nip + "','" + password+ "','" + nama + "','" + notelp + "','" + alamat+ "');";


        try {
            con = connect.getKoneksi();
            st = con.createStatement();
            st.execute(sql);

        } catch (Exception ex) {
            Logger.getLogger(Method.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

     public Pegawai cariPeg(String nip) {
        Pegawai upeg = null;

        if (mem.containsKey(nip)) {
            upeg = mem.get(nip);
        } else {
            String sql = "SELECT * FROM data_pegawai WHERE UPPER(nip) "
                    + "like UPPER('%" + nip + "%') order by nip";

            try {
                con = connect.getKoneksi();
                st = con.createStatement();
                rs = st.executeQuery(sql);
                if (rs.next()) {
                    Pegawai temp = new Pegawai();
                    temp.setNip(rs.getString("nip"));

                    upeg = temp;

                    mem.put(nip, temp);
                }
            } catch (Exception ex) {
                Logger.getLogger(Method.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return upeg;
    }
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

//String sql = "INSERT INTO data_pelanggan VALUES ('" + nama + "','" + alamat + "','" + notelp + "','" + username + "','" + password + "');";
String sql = "INSERT INTO data_pelanggan (username, password, nama, notelp, alamat) VALUES ('" + username + "','" + password+ "','" + nama + "','" + notelp + "','" + alamat+ "');";


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
Connection con=null;
  //String dbname="jdbc:odbc:rahasia";
  String status="";
  ResultSet rs = null;
  try {
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost/rahasia", "root", "");
    if (con==null)
       status = "gagal";
    else
       status = "berhasil";
  }catch(ClassNotFoundException ex) {
       status = "Driver Error";
  }catch(SQLException ex) {
       status = "gagal";
  }
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

        public boolean cekLogin2(String nip, String password){
        boolean result = true;
        try {
            con = connect.getKoneksi();
            st = con.createStatement();
            rs = st.executeQuery("select count(*) as jumlah from data_pegawai where nip='" + nip + "' and password='" + password + "'");
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
        public boolean tambahorder (order Order) {
    boolean result = true;

        


        try {
            con = connect.getKoneksi();
            st = con.createStatement();
            String sql = "INSERT INTO order_baru (pelanggan, paketorder, waktuambil, alamatambil, tanggal_transaksi) VALUES ('" + Order.getPelanggan() + "','" + Order.getPaketorder() + "','" + Order.getWaktuambil() + "','" + Order.getAlamatambil() + "','" + Order.getTanggal_transaksi() + "')";
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

   public boolean editUser(String username, String password, String nama, String notelp, String alamat){
        boolean result = true;
        Pelanggan userx = new Pelanggan();

        userx.setUsername(username);
        userx.setPassword(alamat);
        userx.setNama(nama);
        userx.setNotelp(notelp);
        userx.setAlamat(alamat);

       String sql = "UPDATE data_pelanggan SET username='"+username+"',password='"+password+"', nama='"+nama+"', notelp='"+notelp+"', alamat='"+alamat+"' WHERE username='"+username+"'";


        try {
            con = connect.getKoneksi();
            st = con.createStatement();
            st.executeUpdate(sql);
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


   public boolean editPaket(paketlaundry paketlondry){
        boolean result = true;
  

     String sql = "UPDATE paketlaundry SET namapaket='" + paketlondry.getNamapaket() + "', harga='" + paketlondry.getHarga() + "', keterangan='" + paketlondry.getKeterangan() + "' WHERE namapaket='" + paketlondry.getNamapaket() + "'";
     


        try {
            con = connect.getKoneksi();
            st = con.createStatement();
            st.executeUpdate(sql);
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











   public boolean tambahpaket(paketlaundry paketLaundry) {
        boolean result = true;

        String sql = "INSERT INTO paketlaundry VALUES ('" + paketLaundry.getNamapaket() + "','" + paketLaundry.getHarga() + "','" + paketLaundry.getKeterangan() + "');";


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


   public boolean hapuspaket (paketlaundry paketLondre) {
       boolean result = true;

      //String sql = "INSERT INTO paketlaundry VALUES ('" + paketLaundry.getNamapaket() + "','" + paketLaundry.getHarga() + "','" + paketLaundry.getKeterangan() + "');";
        String sql = "DELETE FROM paketlaundry WHERE namapaket='"+paketLondre.getNamapaket()+"'";

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


   


















   //public  paketlaundry[] lihatpaket () {
     //       boolean result = true;


       //     String sql = "SELECT * FROM paketlaundry";

        //Laundry.paketlaundry[] daftarPaketLaundry = null;

         //try {
           // con = connect.getKoneksi();
            //st = con.createStatement();
            //rs = st.executeQuery(sql);

           
        
        
 //if (rs != null){
   //     int i =0;
     //    while(rs.next()){
       //     Laundry.paketlaundry[] paketLaundry = null;
         //   paketLaundry[i].setNamapaket(rs.getString(1));
           // paketLaundry[i].setHarga(rs.getString(2));
            //paketLaundry[i].setKeterangan(rs.getString(3));

            //daftarPaketLaundry[i] = paketLaundry[i];
            //i++;
            
     //}
       //     }

        //} catch (Exception ex) {
          //  Logger.getLogger(Method.class.getName()).log(Level.SEVERE, null, ex);

        //} finally {
          //  try {
            //    st.close();
              //  con.close();
            //} catch (SQLException ex) {
              //  Logger.getLogger(Method.class.getName()).log(Level.SEVERE, null, ex);
           // }
        //}
        //return daftarPaketLaundry;

   // }

public boolean hapusPeg(String nip) {

       boolean result = true;
        Pegawai peg = new Pegawai();

            String sql = "DELETE FROM data_pegawai WHERE nip='" +nip+ "'";

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

public boolean hapusUser(String username) {

       boolean result = true;
        Pelanggan userx = new Pelanggan();

            String sql = "DELETE FROM data_pelanggan WHERE username='" + username + "'";

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


