<%-- 
    Document   : update
    Created on : Dec 12, 2011, 11:36:14 AM
    Author     : dika
--%>

<%@page import="java.sql.*"%>

<%
String ide=request.getParameter("id");
String username=request.getParameter("username");
String password=request.getParameter("password");
String notelp=request.getParameter("notelp");
String nama=request.getParameter("nama");
String alamat=request.getParameter("alamat");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost/rahasia","root", "");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update data_pegawai set username='"+username+"',password='"+password+"',notelp="+notelp+",nama='"+nama+",alamat='"+alamat+"' where id='"+ide+"'");

}
catch(Exception e){
response.sendRedirect("Manage_Peg.jsp");
    }
%>
