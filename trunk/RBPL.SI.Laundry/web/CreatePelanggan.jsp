<%-- 
    Document   : CreatePelanggan
    Created on : Nov 13, 2011, 4:21:49 PM
    Author     : dika
--%>

 
<%--
    Document   : welcome
    Created on : Nov 13, 2011, 4:21:49 PM
    Author     : dika
--%>


<%@page import="javax.swing.JOptionPane"%>
<%
        String username = request.getParameter ("username");
        String password = request.getParameter ("password");
        String nama = request.getParameter ("nama");
        String notelp = request.getParameter ("notelp");
        String alamat = request.getParameter ("alamat");

        Laundry.Method user = new Laundry.Method();

        if(username == "" || password == "" || nama=="" || notelp == ""|| alamat == ""){
            response.sendRedirect("DaftarPelanggan.jsp?status=1");
        }else if(user.cariUser(username)!=null){
            response.sendRedirect("DaftarPelanggan.jsp?status=null");
         } else if (username.length() < 6 || username.length() > 12) {
            response.sendRedirect("DaftarPelanggan.jsp?statuss=1");
        } else if (password.length() < 6 || password.length() > 12) {
            response.sendRedirect("DaftarPelanggan.jsp?statuss=1");
        }else{
         String x = "Password dan Username anda adalah  " + username +" dan "
                 + ""+ password +" Jangan Sampai Lupa ";
        JOptionPane.showMessageDialog(null, x);
        user.tambahUser(username, password, nama, notelp, alamat);
        response.sendRedirect("MelihatPelanggan.jsp");
        }

    %>
