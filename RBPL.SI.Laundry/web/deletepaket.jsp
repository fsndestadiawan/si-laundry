<%-- 
    Document   : deletepaket
    Created on : Dec 31, 2011, 3:22:43 PM
    Author     : Achmad
--%>

<%@ page import="java.sql.*" %>
<%
   /**
  * Mengambil parameter dari halaman FormEditData.html
  */
  String namapaket = request.getParameter("ed_namapaket");

  Connection con=null;
  //String dbname="jdbc:odbc:DSFilm";
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
  String kueri = "DELETE FROM paketlaundry WHERE namapaket='"+namapaket+"'";
  int deleteData = st.executeUpdate(kueri);
%>
<html>
<head>
<title>Isi Tabel Film</title>
</head>

<body>
  <%
  if (deleteData == 1)
     out.println("Delete data berhasil");
  else
     out.println("Delete data gagal");
%>
  <p><a href="LihatData.jsp">LIHAT DATA</a></p>
</div>
</body>
</html>