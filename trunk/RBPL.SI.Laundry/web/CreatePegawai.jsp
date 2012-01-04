<%--
    Document   : CreatePegawai
    Created on : Jan 3, 2012, 8:28:47 AM
    Author     : dika
--%>

<%@page import="javax.swing.JOptionPane"%>
<%
        String nip = request.getParameter ("nip");
        int no=Integer.parseInt(nip);
        String password = request.getParameter ("password");
        String nama = request.getParameter ("nama");
        String notelp = request.getParameter ("notelp");
        int telp =Integer.parseInt(notelp);
        String alamat = request.getParameter ("alamat");

        Laundry.Method Pegawai = new Laundry.Method();

        if(nip == "" || password == "" || nama=="" || notelp == ""|| alamat == ""){
            response.sendRedirect("DaftarPegawai.jsp?status=1");
        }else if(Pegawai.cariPeg(nip)!=null){
            response.sendRedirect("DaftarPegawai.jsp?status=null");
         } else if (nip.length() <5 || nip.length()>7) {
            response.sendRedirect("DaftarPegawai.jsp?statuss=1");
        } else if (password.length() <5 || password.length()>7) {
            response.sendRedirect("DaftarPegawai.jsp?statuss=1");
        }else{
         String x = "Nip dan Username anda adalah  " + nip +" dan "
                 + ""+ password +" Jangan Sampai Lupa ";
        JOptionPane.showMessageDialog(null, x);
        Pegawai.tambahPeg(nip, password, nama, notelp, alamat);
        response.sendRedirect("MelihatPegawai.jsp");
        }

    %>
