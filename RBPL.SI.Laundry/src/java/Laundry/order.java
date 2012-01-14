package Laundry;

/**
 *
 * @author Achmad
 */
import java.util.Date;

public class order {
    private String paketorder;
    private String waktuambil;
    private String alamatambil;
    private String pelanggan;
    private Date tanggal_transaksi;
 
    /**
     * @return the paketorder
     */
    public String getPaketorder() {
        return paketorder;
    }

    /**
     * @param paketorder the paketorder to set
     */
    public void setPaketorder(String paketorder) {
        this.paketorder = paketorder;
    }

    /**
     * @return the waktuambil
     */
    public String getWaktuambil() {
        return waktuambil;
    }

    /**
     * @param waktuambil the waktuambil to set
     */
    public void setWaktuambil(String waktuambil) {
        this.waktuambil = waktuambil;
    }

    /**
     * @return the alamatambil
     */
    public String getAlamatambil() {
        return alamatambil;
    }

    /**
     * @param alamatambil the alamatambil to set
     */
    public void setAlamatambil(String alamatambil) {
        this.alamatambil = alamatambil;
    }

    /**
     * @return the pelanggan
     */
    public String getPelanggan() {
        return pelanggan;
    }

    /**
     * @param pelanggan the pelanggan to set
     */
    public void setPelanggan(String pelanggan) {
        this.pelanggan = pelanggan;
    }

    /**
     * @return the tanggal_transaksi
     */
    public Date getTanggal_transaksi() {
        return tanggal_transaksi;
    }

    /**
     * @param tanggal_transaksi the tanggal_transaksi to set
     */
    public void setTanggal_transaksi(Date tanggal_transaksi) {
        this.tanggal_transaksi = tanggal_transaksi;
    }

}

