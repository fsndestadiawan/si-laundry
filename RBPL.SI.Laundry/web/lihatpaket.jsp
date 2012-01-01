<%-- 
    Document   : lihatpaket
    Created on : Dec 31, 2011, 11:22:58 AM
    Author     : Achmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<%@ page import="java.sql.*" %>
<%
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

  Statement st = con.createStatement();
  String kueri = "SELECT * FROM paketlaundry";
  rs = st.executeQuery(kueri);
%>
<html>
<head>
<title>Daftar Paket Laundry</title>
</head>

<body>
<p align="center"><strong><font size="6">Paket Laundry</font>
</strong></p>
<div align="center">
  <table width="58%" border="1">
    <tr bordercolor="#666666" bgcolor="#999999">
      <td width="7%">Nama Paket</td>
      <td width="70%">Harga</td>
      <td width="5%">Keterangan</td>
      <td width="5%">EDIT</td>
      <td width="13%">DELETE</td>
    </tr>
    <%
      if (rs != null){
         while(rs.next()){
            String namapaket = rs.getString(1);
            String harga = rs.getString(2);
            String keterangan = rs.getString(3);
     %>
         <tr>
      <td><%=namapaket%></td>
      <td><%=harga%></td>
      <td><%=keterangan%></td>
      <td><a
href="editpaket.jsp?ed_namapaket=<%=namapaket%>&ed_harga=<%=harga%>
&ed_keterangan=<%=keterangan%>">EDIT</a></td>
      <td><a
href="deletepaket.jsp?ed_namapaket=<%=namapaket%>">DELETE</a></td>
    </tr>
     <% }
         }
        st.close();
        con.close();
     %>
  </table>
  
</div>
</body>
</html>