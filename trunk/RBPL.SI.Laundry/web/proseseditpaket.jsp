<%--
    Document   : proseseditpaket
    Created on : Dec 31, 2011, 12:52:00 PM
    Author     : Achmad
--%>

<%
       String namapaket = request.getParameter ("namapaket");
        String harga = request.getParameter ("harga");
        String keterangan = request.getParameter ("keterangan");

        Laundry.Method paketlaundry = new Laundry.Method();
        Laundry.paketlaundry paketlondry = new Laundry.paketlaundry();

      paketlondry.setNamapaket(namapaket);
      paketlondry.setHarga(harga);
      paketlondry.setKeterangan(keterangan);

        if( namapaket == "" || harga=="" || keterangan == ""){
            response.sendRedirect("lihatpaket.jsp?status=1");

        }else{
            paketlaundry.editPaket(paketlondry);

        response.sendRedirect("lihatpaket.jsp?status2=1");
        }

%>
