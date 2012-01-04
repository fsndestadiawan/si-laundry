<%-- 
    Document   : ProfilPelanggan
    Created on : 06 Des 11, 5:15:20
    Author     : Andead
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.lang.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Lond</title>
        <style type="text/css">
<!--
body {
	background-color: #DCDCDC;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 24px;
	color: #336699;
}

td, th {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 24px;
	color: #333333;
}

a {
	color: #3366CC;
	text-decoration: none;
}

form {
	background-color: #CCCC99;
}

.title {
	font-family: Arial, Helvetica, sans-serif;
  font-size: 24px;
	line-height: 30px;
  background-color: #006666;
	color: #DCDCDC;
}

.subtitle {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 16px;
	line-height: 22px;
	font-weight: bold;
  color: #006666;
}

.header {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 24px;
	background-color: #006666;
  color: #DCDCDC;
}

.nav {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
  font-weight: bold;
	background-color: #CCCCCC;
}

.navLink {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	font-weight: bold;
	background-color: #DEDECA;
}

.sidebar {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 18px;
	padding: 3px;
	background-color: #FFFFFF;
}

.sidebarHeader {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 16px;
	line-height: 24px;
	color: #FFFFFF;
	background-color: #339999;
}

.sidebarFooter {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 18px;
	background-color: #CCCCCC;
}

.footer {
  font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	font-weight: bold;
	line-height: 22px;
	color: #333333;
	background-color: #CCCCCC;
}

.legal {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 9px;
	color: #333333;
}

.box1 {
	border-color: #CCCCCC #333333 #333333 #CCCCCC;
	border-width: medium;
  border-style: ridge;
}

.promo {
	font-family: "Times New Roman", Times, serif;
	color: #000033;
}

.titlebar {
	font-family: "Times New Roman", Times, serif;
	font-size: 9px;
	color: #FFFFFF;
  background-color: #336699;
}

.dingbat {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #99CC99;
  color: #006666;
	font-weight: bolder;
	font-size: medium;
}

a:hover {
	text-decoration: underline;
}

input.big {
	width: 100px;
}

input.small {
	width: 50px;
}

-->
</style>

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
  
%>

    </head>
    <body>
        <table align="center">
            <tr>
                <td><h1>Selamat Datang <%= session.getAttribute( "ID_Pelanggan" ) %> di E-Lond</h1></td>
            </tr>
            <tr>
                <td><a href="HomePelanggan.jsp">Home</a></td>
                <td><a href="order.jsp">Transaksi</a></td>
                <td><a href="ProfilPelanggan">Profil</a></td>
                <td><a href="">Reward</a></td>
            </tr>

            <%
            //String now = session.getAttribute( "ID_Pelanggan" );
            Laundry.Pelanggan pelanggan = new Laundry.Pelanggan();
            String now = pelanggan.getUsername();
            String kueri = "SELECT * FROM data_pelanggan WHERE username=now";
  rs = st.executeQuery(kueri);
      if (rs != null){
         while(rs.next()){
            String nama = rs.getString(4);
            String notelp = rs.getString(5);
            String alamat = rs.getString(6);
     %>

     <tr>&nbsp;</tr>
     <tr><td align="right">Nama</td><td><%=nama%></td></tr>
     <tr><td align="right">No. Telepon</td><td><%=notelp%></td></tr>
     <tr><td align="right">Alamat</td> <td><%=alamat%></td></tr>
        
        
       

     <% }
         }
        st.close();
        con.close();
     %>
        </table>

    </body>
</html>
