<%--
    Document   : home
    Created on : 12 Nov 11, 16:50:46
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
    </head>
    <body>
        <% String now=(String) session.getAttribute("ID_Pelanggan"); %>
        <table align="center" border="0" cellpadding="10" cellspacing="1">
            <tr >
                <td><h1>Selamat Datang <%=now%> di E-Lond</h1></td>
            </tr>
        </table>
            <table align="center" border="0" cellpadding="10" cellspacing="1" width="600px">
            <tr>
                <td align="center" width="20%"><a href="order.jsp">Transaksi</a></td>
                <td align="center" width="20%"><a href="ProfilPelanggan.jsp">Profil</a></td>
                <td align="center" width="20%"><a href="MelihatReward.jsp">Reward</a></td>
                <td align="center" width="20%"><a href="TmblLogotPl.jsp">Logout</a></td>
            </tr>
            </table>
            <table align="center" border="0" cellpadding="10" cellspacing="1">
                <%
  Connection con=null;
  //String dbname="jdbc:odbc:rahasia";
  String status="";
  ResultSet rs = null;
  ResultSet rs2 = null;
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
  String kueri = "SELECT Nama,Poin FROM reward";
      rs = st.executeQuery(kueri);
      %> <tr>
          <tr>&nbsp;</tr>
          <td width="200px">Jenis Reward</td><td width="100px">Poin</td></tr> <%
      if (rs != null){
         while(rs.next()){
            String nama = rs.getString(1);
            String poin = rs.getString(2);
     %>

     
     <tr><td><%=nama%></td><td><%=poin%></td></tr>




     <% }}
      st.close();
        con.close();
   %>
            </table>
    </body>
</html>