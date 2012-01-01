<%-- 
    Document   : delete
    Created on : Dec 12, 2011, 11:26:36 AM
    Author     : dika
--%>

<%@page import="java.sql.*"%>
<%
   /**
  * Mengambil parameter dari halaman FormEditData.html
  */
  String username = request.getParameter("ed_username");

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
  //String kueri = "DELETE FROM FILM WHERE FILM.ID="+id;
  String kueri = "DELETE FROM data_pelanggan WHERE username='"+username+"'";
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
   response.sendRedirect("MelihatPelanggan.jsp");

%>

</div>
</body>
</html>