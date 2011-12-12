<%-- 
    Document   : delete
    Created on : Dec 12, 2011, 11:26:36 AM
    Author     : dika
--%>

<%@page import="java.sql.*"%>
<%

String id=request.getParameter("id");
int no=Integer.parseInt(id);
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/rahasia","root", "");
Statement st = conn.createStatement();
st.executeUpdate("DELETE FROM data_pegawai pelanggan WHERE id = '"+no+"'");
response.sendRedirect("Manage_Peg.jsp");
}
catch(Exception e){}
%>