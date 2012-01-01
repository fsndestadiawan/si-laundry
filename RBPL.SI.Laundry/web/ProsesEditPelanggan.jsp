<%-- 
    Document   : update
    Created on : Dec 12, 2011, 11:36:14 AM
    Author     : dika
--%>

<%@ page import="java.sql.*" %>
<%
        String id = request.getParameter ("id");
        String username = request.getParameter ("username");
        String password = request.getParameter ("password");
        String nama = request.getParameter ("nama");
        String notelp = request.getParameter ("notelp");
        String alamat = request.getParameter ("alamat");

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
  String kueri = "UPDATE data_pelanggan SET username='"+username+"',password='"+password+"', nama='"+nama+"', notelp='"+notelp+"', alamat='"+alamat+"' WHERE username='"+username+"'";

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
  response.sendRedirect("MelihatPelanggan.jsp");
%>


</BODY>
</HTML>