<%--
    Document   : tmbpaketlaundry
    Created on : Des 30, 2011, 9:00:33 PM
    Author     : Achmad
--%>

<%
        String namapaket = request.getParameter ("namapaket");
        String harga = request.getParameter ("harga");
        String keterangan = request.getParameter ("keterangan");

        Laundry.Method paketlaundry = new Laundry.Method();
        if(namapaket == "" || harga== "" || keterangan==""){
            response.sendRedirect("paketlaundry.jsp?statusa=1");

        }else{
            
        paketlaundry.tambahpaketlaundry (namapaket, harga, keterangan);
        response.sendRedirect("paketlaundry.jsp?statusb=1");
        }

    %>
