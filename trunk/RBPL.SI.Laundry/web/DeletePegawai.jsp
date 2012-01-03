<%-- 
    Document   : DeletePegawai
    Created on : Jan 3, 2012, 9:06:25 AM
    Author     : dika
--%>


<%@page import="java.sql.*"%>

<%
  String nip= request.getParameter("ed_nip");

    Laundry.Method Pegawai = new Laundry.Method();
    if (Pegawai.hapusPeg(nip));
    
    response.sendRedirect("MelihatPegawai.jsp");

%>
