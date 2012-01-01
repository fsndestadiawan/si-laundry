<%-- 
    Document   : editpaket
    Created on : Dec 31, 2011, 12:42:03 PM
    Author     : Achmad
--%>

<%@ page import="java.sql.*" %>
<%
   /**
  * Mengambil parameter dari halaman FormMasukanData.html
  */
  String namapaket = request.getParameter("ed_namapaket");
  String harga = request.getParameter("ed_harga");
  String keterangan = request.getParameter("ed_keterangan");
%>
<html>
<head>
<title>Edit Data Paket</title>
</head>

<body>
<form name="form1" method="post" action="proseseditpaket.jsp">
  <table width="56%" border="1">
    <tr>
      <td  colspan="2"><strong>FORM  INPUT
DATABASE</strong></td>
    </tr>
    <tr>
      <td width="22%">Nama Paket</td>
      <td width="78%"><input name="tf_namapaket" type="text" readonly
id="tf_id" value="<%=namapaket%>" size="50"></td>
    </tr>
    <tr>
      <td>Harga</td>
      <td><input name="tf_harga" type="text" id="tf_harga"
value="<%=harga%>" size="50"></td>
    </tr>
    <tr>
      <td>Keterangan</td>
      <td><input name="tf_keterangan" type="text" id="tf_keterangan"
value="<%=keterangan%>" size="50"></td>
    </tr>
    <tr>
      <td><input  type="submit"  name="Submit"
value="Submit"></td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <p><a href="LihatData.jsp">LIHAT DATA</a></p>

</form>
</body>
</html>