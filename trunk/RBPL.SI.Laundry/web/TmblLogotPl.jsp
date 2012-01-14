<%@ page import="java.sql.*" %>
<%
        if (session.getAttribute("ID_Pelanggan") != null) {
            session.removeAttribute("ID_Pelanggan");
            response.sendRedirect("LoginPelanggan.jsp?notif1=1");
        }
    

    %>
