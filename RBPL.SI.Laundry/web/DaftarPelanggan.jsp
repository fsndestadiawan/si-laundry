<%-- 
    Document   : DaftarPelanggan
    Created on : Nov 12, 2011, 2:43:58 PM
    Author     : dika
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Welcome</title>

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
<div class="body" id="main">
  <div class="style4" id="logo"></div>
  <div id="menu">
    <div align="center">
      <a href="index.jsp"><span class="style6">Home</span></a> <span class="style7">
      <hr />
      <br />
    </div>
  </div>
  <div id="judul">
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

