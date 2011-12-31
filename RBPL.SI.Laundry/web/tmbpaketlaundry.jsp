<%--
    Document   : welcome
    Created on : Nov 14, 2011, 9:00:33 PM
    Author     : Achmad
--%>

<%
//mengambil inputan dari form
        String namapaket = request.getParameter ("namapaket");
        String harga = request.getParameter ("harga");
        String keterangan = request.getParameter ("keterangan");

        Laundry.Method paketlaundry = new Laundry.Method();
        
        Laundry.paketlaundry paketLaundry = new Laundry.paketlaundry();
        paketLaundry.setNamapaket(namapaket);
        paketLaundry.setHarga(harga);
        paketLaundry.setKeterangan(keterangan);

        if(namapaket == "" || harga== "" || keterangan==""){
            response.sendRedirect("paketlaundry.jsp?status=1");

        }else{

        //paketlaundry.tambahpaket(namapaket, harga, keterangan);
        paketlaundry.tambahpaket(paketLaundry);
        response.sendRedirect("paketlaundry.jsp?status2=1");
        }

    %>
