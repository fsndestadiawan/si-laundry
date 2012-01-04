<%--
    Document   : delete
    Created on : Dec 12, 2011, 11:26:36 AM
    Author     : dika
--%>


<%@page import="javax.swing.JDialog"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>
<%
  String username = request.getParameter("ed_username");

    Laundry.Method Pelanggan = new Laundry.Method();


        JDialog.setDefaultLookAndFeelDecorated(true);
    int x = JOptionPane.showConfirmDialog(null, "Do you want to delete "+username+"?", "Deleting ",
        JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
    if (x == JOptionPane.NO_OPTION) {
      System.out.println("JOptionPane closed");
    } else if (Pelanggan.hapusUser(username));
      System.out.println("Yes button clicked");

    response.sendRedirect("MelihatPelanggan.jsp");

%>

