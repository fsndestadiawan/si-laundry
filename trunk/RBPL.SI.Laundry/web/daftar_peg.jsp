<%-- 
    Document   : daftar_peg
    Created on : Dec 12, 2011, 11:22:14 AM
    Author     : dika
--%>

 <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<HTML>
<HEAD>
  <TITLE>WELCOME</TITLE>
</HEAD>
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
    
  <font size="+3" color="green"><br>Daftar User Pegawai Laundry!</font>
  <FORM action="daftar_peg.jsp" method="get">
    <TABLE  WIDTH="30%" >
                <TR>
                    <TH width="50%">Name</TH>
                    <TD width="50%"><INPUT TYPE="text" NAME="nama"></TD>
                </tr>
                <TR>
                    <TH width="50%">City</TH>
                    <TD width="50%"><INPUT TYPE="text" NAME="alamat"></TD>
                </tr>
                <TR>
                    <TH width="50%">Phone</TH>
                    <TD width="50%"><INPUT TYPE="text" NAME="notelp"></TD>
                </tr>
                <TR>
                    <TH width="50%">Username</TH>
                    <TD width="50%"><INPUT TYPE="text" NAME="username"></TD>
                </tr>
                <TR>
                    <TH width="50%">Password</TH>
                    <TD width="50%"><INPUT TYPE="password" NAME="password"></TD>
                </tr>
                <TR>
                    <TH></TH>
                    <TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>
                </tr>
            </TABLE>
<%
                        String nama = request.getParameter("nama");
                        String alamat = request.getParameter("alamat");
                        String notelp = request.getParameter("notelp");
                        String username = request.getParameter("username");
                        String password = request.getParameter("password");
   /* Create string of connection url within specified
   format with machine name,
    port number and database name. Here machine name id
    localhost and database name is student. */
    String connectionURL = "jdbc:mysql://localhost/rahasia";
          // declare a connection by using Connection interface
    Connection connection = null;
        // declare object of Statement interface that uses for  executing sql statements.
     PreparedStatement pstatement = null;
         // Load JBBC driver "com.mysql.jdbc.Driver"
     Class.forName("com.mysql.jdbc.Driver").newInstance();
          int updateQuery = 0;

     	 // check if the text box is empty
	 if(username!=null && password!=null && notelp!=null && nama!=null && alamat!=null && notelp!=null){

	     if(username!="" && password!="" && notelp!="") {
	                 try {
              /* Create a connection by using getConnection()
              method that takes parameters of string type
              connection url, user name and password to connect
		to database. */
              connection = DriverManager.getConnection ("jdbc:mysql://localhost/rahasia", "root", "");

                            // sql query to insert values in the secified table.
              String queryString = "INSERT INTO data_pegawai (data_pelanggannama, alamat,notelp, username, password) VALUES (?,?,?,?,?)";

              	      /* createStatement() is used for create statement
              object that is used for
		sending sql statements to the specified database. */
              pstatement = connection.prepareStatement(queryString);
                          pstatement.setString(1, nama);
			  pstatement.setString(2, alamat);
			  pstatement.setString(3, notelp);
                          pstatement.setString(4, username);
                          pstatement.setString(5, password);
              updateQuery = pstatement.executeUpdate();
                            if (updateQuery != 0) { %>
	           <br>
	           <TABLE style="background-color: #E3E4FA;"
                   WIDTH="30%" border="1">
                <tr><th><p>Data is inserted successfully
                        in database.
                      <label></label>
                      <a href="Manage_Peg.jsp">Klik</a></p>
                    </th></tr>
          </table>
              <%
              }
            }
            catch (Exception ex) {
            out.println("Unable to connect to batabase.");

               }
            finally {
                // close all the connections.
                pstatement.close();
                connection.close();
            }
	  }
	}
%>
  </FORM>
 </body>
</html>
