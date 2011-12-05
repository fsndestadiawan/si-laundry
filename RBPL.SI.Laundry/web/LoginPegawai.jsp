<%-- 
    Document   : LoginPegawai
    Created on : 06 Des 11, 5:10:56
    Author     : Andead
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language ="java" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <body bgcolor="cyan">
        <form action="TmbLoginPegawai.jsp" name="login" method="post">
            <table>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <%
                                    String a = request.getParameter("eror1");
                                    if (a != null) {
                                        out.println("Isi ID dan Password Dengan Benar.");
                                    }

                                    String b = request.getParameter("eror2");
                                    if (b != null) {
                                        out.println("Periksa Kembali ID dan Password Anda.");
                                    }

                        %></td>
                </tr>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="ID_pegawai" ></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pass_pegawai"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="loginpegawai" value="Login"></td>
                </tr>
            </table>
        </form>
    </body>
</html>