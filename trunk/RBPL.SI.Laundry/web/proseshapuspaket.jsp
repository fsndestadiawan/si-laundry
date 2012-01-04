<%-- 
    Document   : proseshapuspaket
    Created on : Jan 4, 2012, 6:35:26 PM
    Author     : Achmad
--%>

<%
       String namapaket = request.getParameter ("namapaket");
        String harga = request.getParameter ("harga");
        String keterangan = request.getParameter ("keterangan");

        Laundry.Method paketlaundry = new Laundry.Method();
        Laundry.paketlaundry paketLondre = new Laundry.paketlaundry();

      paketLondre.setNamapaket(namapaket);
      paketLondre.setHarga(harga);
      paketLondre.setKeterangan(keterangan);

      
            paketlaundry.hapuspaket(paketLondre);

        response.sendRedirect("lihatpaket.jsp?status4=1");
       

%>
