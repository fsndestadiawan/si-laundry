<%@ page import="java.sql.*" %>
<%
        if (session.getAttribute("ID_Pegawai") != null) {
            session.removeAttribute("ID_Pegawai");
            response.sendRedirect("LoginPegawai.jsp?notif1=1");
        }


    %>
