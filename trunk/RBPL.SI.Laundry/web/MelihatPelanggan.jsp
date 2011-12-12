<%-- 
    Document   : MelihatPelanggan
    Created on : Nov 14, 2011, 11:57:49 AM
    Author     : dika
--%>

<%@ page import="java.sql.*" %>
<html>
<head>
</head>
<body>
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
<br><br>
<form method="post" name="form">
<table border="1" align="center">
<tr><th>Name</th><th>alamat</th><th>Notelp</th><th>username</th></tr>
<%
Connection con = null;
String url = "jdbc:mysql://localhost/";
String db = "rahasia";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="";

int sumcount = 0;
Statement st;
try{
Class.forName(driver).newInstance();
con = DriverManager.getConnection("jdbc:mysql://localhost/rahasia","root", "");
String query = "select * from data_pelanggan";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>

<%
while(rs.next()){
%>
<tr>
<td><%=rs.getString("nama")%></td>
<td><%=rs.getString("alamat")%></td>
<td><%=rs.getString("notelp")%></td>
<td><%=rs.getString("username")%></td>
<td><a href="edit_pelanggan.jsp">Edit</a></td>
<td><a href="delete.jsp">Delete</a></td>
</tr>
<%
}
%>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>
</table>
</form>
</body>
</html>