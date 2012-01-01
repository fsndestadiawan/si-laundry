<%--
    Document   : welcome
    Created on : Nov 14, 2011, 9:00:33 PM
    Author     : Achmad
--%>

<%
        
        String paketorder = request.getParameter ("paketorder");
        String waktuambil = request.getParameter ("waktuambil");
        String alamatambil = request.getParameter ("alamatambil");

        Laundry.Method order = new Laundry.Method();
        if(paketorder== "" || waktuambil=="" || alamatambil == ""){
            response.sendRedirect("order.jsp?status=1");

        }else{

        order.tambahorder(paketorder, waktuambil, alamatambil);
        response.sendRedirect("order.jsp?status2=1");
        }

    %>
