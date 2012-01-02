<%--
    Document   : update
    Created on : Dec 12, 2011, 11:36:14 AM
    Author     : dika
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@ page import="java.sql.*" %>
<%

        String username = request.getParameter ("username");
        String password = request.getParameter ("password");
        String nama = request.getParameter ("nama");
        String notelp = request.getParameter ("notelp");
        String alamat = request.getParameter ("alamat");

        Laundry.Method user = new Laundry.Method();
         if( password == "" || nama=="" || notelp == ""|| alamat == ""){
            response.sendRedirect("edit_pelanggan.jsp?status=1");

        } else if (password.length() < 6 || password.length() > 12) {
            response.sendRedirect("edit_pelanggan.jsp?statuss=1");
        }else{
            user.editUser(username, password, nama, notelp, alamat);
             String tampil = "Password dan Username anda adalah  " + username +" dan "
                 + ""+ password +" Jangan Sampai Lupa ";
        JOptionPane.showMessageDialog(null, tampil);

        response.sendRedirect("MelihatPelanggan.jsp");
        }

    %>

