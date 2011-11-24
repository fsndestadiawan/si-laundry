<%-- 
    Document   : MelihatPelanggan
    Created on : Nov 14, 2011, 11:57:49 AM
    Author     : dika
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*"  %>


<html>
    <head>
    </heoad>
<body>
    <h2>Daftar Pelanggan</h2>
    <%
                try {

                    String connectionURL = "jdbc:mysql://localhost/rahasia";
                    Connection con = null;
                    Statement st = null;
                    ResultSet rs = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con = DriverManager.getConnection(connectionURL, "root", "");
                    st = con.createStatement();
                    String QueryString = "SELECT * from data_pelanggan";
                    rs = st.executeQuery(QueryString);
    %>
    <TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">
        <%
            while (rs.next()) {
        %>

<TR>
<TD><%=rs.getString(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
</TR>
       
        <% }%>
        <%
        // close all the connections.
            rs.close();
            st.close();
            con.close();
        } catch (Exception ex) {
        %>

        <%
                        out.println("Unable to connect to database.");
                    }
        %>
    </TABLE><TABLE>
        <TR>
            <TD><FORM ACTION="DaftarPelanggan.jsp" method="get" >
                    <button type="submit">back</button></TD>
        </TR>
    </TABLE>
</font>
</body>
</html>
