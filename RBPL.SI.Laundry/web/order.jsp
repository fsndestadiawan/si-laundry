<%--
    Document   : index
    Created on : Nov 14, 2011, 8:59:08 PM
    Author     : Achmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Welcome</title>
<link href="theCSS.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body,td,th {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #FFFFFF;
}
body {
	background-color: #000000;
}
.style2 {color: #000000}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
.style4 {font-size: 16px}
.style6 {color: #FFFF00}
.style7 {color: #FF0000}
.style8 {color: #FFFFFF; }
-->

</style></head>

<body>
<div class="body" id="main">
  <div class="style4" id="logo"></div>
  <div id="menu">
    <div align="center">
      <p><a href="addorder.jsp"><span class="style6">Home</span></a> <span class="style7">
      <hr />
      <br />
    </div>
  </div>
  <div id="judul">Home</div><br />
  <div id="konten">
    <FORM METHOD=POST ACTION="addorder.jsp">
        <p></p>
        <table width="327" border="0">
          <tr>
            <td width="98">Nomor Order*</td>
            <td width="219">:
            <input name="noorder" type="varchar"  />   </td>
          </tr>
          <tr>
            <td>Paket Order*</td>
            <td>:
            <input name="paketorder" type="text"  /></td>
          </tr>
          <tr>
            <td>Waktu Ambil*</td>
            <td>:
            <input name="waktuambil" type="text" /></td>
          </tr>
             <tr>
            <td>Alamat Ambil*</td>
            <td>:
            <input name="alamatambil" type="text" /></td>
          </tr>

          <tr>
            <td colspan="2"><div align="center">
              <input type="submit" name="submit" value="Submit" />
              <input type="reset" name="submit2" value="Reset" />
            </div></td>
          </tr>
      </table>
        <%
    String a = request.getParameter("status");
    if (a != null){
    out.println("isi Kolom  terlebih dahulu xist or check required field.");

    String b = request.getParameter("status2");
    if (b != null){
    out.println("Transaksi berhasil");
    }

%>
    </FORM>
</div>
  <div id="footer">
    <p align="center" class="style2">Created by <a href="http://www.google.com" class="style6">Kelompok 10 RBPL |</a> | <a href="http://websi.its-sby.edu/apps/elearning" class="style6">Sistem Informasi |</a> |<a href="http://www.its.ac.id" class="style6">ITS</a>
        <span class="style2">Copyright &copy; 2011. All Right Reserved </span></p>
  </div>
</div>
    </body>
</html>
