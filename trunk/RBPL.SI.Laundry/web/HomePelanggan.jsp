<%--
    Document   : home
    Created on : 12 Nov 11, 16:50:46
    Author     : Andead
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Lond</title>
    </head>
    <body>
        <table align="center">
            <tr>
                <td><h1>Selamat Datang <%= session.getAttribute( "ID_Pelanggan" ) %> di E-Lond</h1></td>
            </tr>
            <tr>
                <td><a href="HomePelanggan.jsp">Home</a></td>
                <td><a href="order.jsp">Transaksi</a></td>
                <td><a href="ProfilPelanggan">Profil</a></td>
                <td><a href="">Reward</a></td>
            </tr>
        </table>
    </body><body>
        <h1></h1>
    </body>
</html>