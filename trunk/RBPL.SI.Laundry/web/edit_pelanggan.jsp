<%--
    Document   : edit
    Created on : Dec 12, 2011, 11:27:29 AM
    Author     : dika
--%>


<%@ page import="java.sql.*" %>
<%

String username = request.getParameter("username");
String nama = request.getParameter("nama");
String alamat = request.getParameter("alamat");
String password = request.getParameter("password");
String notelp = request.getParameter("notelp");

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>[Home]</title>
<link href="theCSS.css" rel="stylesheet" type="text/css" />
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

<body>
<div class="body" id="main">
  <div class="style4" id="logo"></div>
  <div id="menu">
    <div align="center">
      <hr />
      <br />
    </div>
  </div>
  <div id="judul">
    <div align="center">Home</div>
  </div><br />
  <div id="konten">
    <form id="form1" name="form1" method="post" action="ProsesEditPelanggan.jsp">
      <p align="center">EDIT USER<br />
      Silahkan Mengganti Profil nda.
      </p>
        <table width="327" border="0" align="center">
          <tr>
            <td>Username*</td>
            <td>:
              <input name="username" type="text" value="<%=username%>" readonly />   </td>
          </tr>
          <tr>
            <td width="98">Password*</td>
            <td width="219">:
            <input name="password" type="password" id="password" value="<%=password%>"   /></td>
          </tr>
          <tr>
            <td>Nama*</td>
            <td>:
            <input name="nama" type="text" id="nama" value="<%=nama%>"  /></td>
          </tr>
          <tr>
            <td>No Telp* </td>
            <td>:
              <input name="notelp" type="text"id="notelp" value="<%=notelp%>"  /></td>
          </tr>
          <tr>
            <td>Alamat</td>
            <td>:
            <input name="alamat" type="text"id="alamat" value="<%=alamat%>"  /></td>
          </tr>
          <tr>
            <td colspan="2"><div align="center">
              <input type="submit" name="Submit" value="Submit" />
              <input type="reset" name="Submit2" value="Reset" />
            </div></td>
          </tr>
      </table>
        <%
    String ba = request.getParameter("status");
    if (ba != null){
    out.println(" check required field.");
    }
    String bx = request.getParameter("statuss");
    if (bx != null){
    out.println("karakter password diantara 6 - 12.");
    }
%>
    </form>
</div>
  <div id="footer">
    <p align="center" class="style2">Created by <a href="http://www.google.com" class="style6">Kelompok 10 RBPL |</a> | <a href="http://websi.its-sby.edu/apps/elearning" class="style6">Sistem Informasi |</a> |<a href="http://www.its.ac.id" class="style6">ITS</a>
        <span class="style2">Copyright &copy; 2011. All Right Reserved </span></p>
  </div>
</div>
</body>

</head>
</html>

