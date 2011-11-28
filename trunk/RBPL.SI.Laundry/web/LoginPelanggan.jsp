<%--
    Document   : login_pel
    Created on : 12 Nov 11, 16:12:17
    Author     : Andead
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language ="java" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <body bgcolor="cyan">
        <form action="TmbLoginPelanggan.jsp" name="login" method="post">
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
                    <td><input type="text" name="ID_pelanggan" ></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pass_pelanggan"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="login" value="Login"></td>
                </tr>
            </table>
        </form>
    </body>
</html>