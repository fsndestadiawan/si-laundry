<%-- 
    Document   : DaftarPelanggan
    Created on : Nov 12, 2011, 2:43:58 PM
    Author     : dika
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
      <p><a href="DaftarPelanggan.jsp"><span class="style6">Home</span></a> <span class="style7">
      <hr />
      <br />
    </div>
  </div>
  <div id="judul">Home</div><br />
  <div id="konten">
    <FORM METHOD=POST ACTION="CreatePelanggan.jsp">
        <p>Register User Pelanggan</p>
        <table width="327" border="0">
          <tr>
            <td width="98">Username*</td>
            <td width="219">:
            <input name="username" type="text"  />   </td>
          </tr>
          <tr>
            <td>Password*</td>
            <td>:
            <input name="password" type="password"  /></td>
          </tr>
          <tr>
            <td>Nama*</td>
            <td>:
            <input name="nama" type="text" /></td>
          </tr>
             <tr>
            <td>NoTelp*</td>
            <td>:
            <input name="notelp" type="text" /></td>
          </tr>
          <tr>
            <td>Alamat</td>
            <td>:
            <input name="alamat" type="text" id="alamat" size="35" /></td>
          </tr>
          <tr>
            <td colspan="2"><div align="center">
              <input type="submit" name="Submit" value="Submit" />
              <input type="reset" name="Submit2" value="Reset" />
            </div></td>
          </tr>
      </table>
        <%
    String a = request.getParameter("status");
    if (a != null){
    out.println("username already exist or check required field.");
    }

    String b = request.getParameter("statuss");
    if (b != null){
    out.println("Username dan Password harus 6-12 karakter.");
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
</html>
