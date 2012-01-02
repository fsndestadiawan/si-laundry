<%--
    Document   : delete
    Created on : Dec 12, 2011, 11:26:36 AM
    Author     : dika
--%>

<%@page import="javax.swing.JDialog"%>
<%@page import="javax.swing.JFrame"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>
<%
  String username = request.getParameter("ed_username");

    Laundry.Method Pelanggan = new Laundry.Method();
    JFrame parent = new JFrame();

    if (Pelanggan.hapusUser(username)) ;
    JOptionPane optionPane = new JOptionPane("Continue delete username " + username+"?", JOptionPane.QUESTION_MESSAGE, JOptionPane.YES_NO_OPTION);
    JDialog dialog = optionPane.createDialog(parent, "Delete Akun Pelanggan");
    dialog.setVisible(true);
    response.sendRedirect("MelihatPelanggan.jsp");

%>

