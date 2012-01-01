<%-- 
    Document   : proseseditpaket
    Created on : Dec 31, 2011, 12:52:00 PM
    Author     : Achmad
--%>
<%@ page import="java.sql.*" %>
<%
  String namapaket = request.getParameter("tf_namapaket");
  String harga = request.getParameter("tf_harga");
  String keterangan = request.getParameter("tf_keterangan");
  //int jml = Integer.parseInt(jumlah);

  /**
  * Menyiapkan variabel untuk mengakses Database
  */
  Connection con=null;
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

  Statement st = con.createStatement();
  String kueri = "UPDATE paketlaundry SET namapaket='"+namapaket+"',harga='"+harga+"', keterangan='"+keterangan+"' WHERE namapaket='"+namapaket+"'";
  
  st = con.createStatement();
  int editTabel = st.executeUpdate(kueri);
  System.out.println("nilai "+editTabel);
  st.close();
  con.close();
%>
<HTML>
<HEAD>
    <TITLE>Edit Paket</TITLE>
</HEAD>
<BODY>
<%
  if (editTabel == 1)
     out.println("Edit data berhasil");
  else
     out.println("Edit data gagal");
  
%>


</BODY>
</HTML>
