<%--
    Document   : welcome
    Created on : Nov 14, 2011, 9:00:33 PM
    Author     : Achmad
--%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%
        
        String paketorder = request.getParameter ("paketorder");
        String waktuambil = request.getParameter ("waktuambil");
        String alamatambil = request.getParameter ("alamatambil");
        String pel = request.getParameter ("pelanggan");

        Laundry.Method order = new Laundry.Method();
        Laundry.order Order = new Laundry.order();

        Order.setPaketorder(paketorder);
        Order.setWaktuambil(waktuambil);
        Order.setAlamatambil(alamatambil);
        Order.setPelanggan(pel);


        if(paketorder== "" || waktuambil=="" || alamatambil == ""){
            response.sendRedirect("order.jsp?status=1");
           
        }else{

        order.tambahorder(Order);
        response.sendRedirect("order.jsp?status2=1");
        }

    %>
