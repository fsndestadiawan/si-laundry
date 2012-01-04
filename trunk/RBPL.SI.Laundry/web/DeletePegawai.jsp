<%-- 
    Document   : DeletePegawai
    Created on : Jan 3, 2012, 9:06:25 AM
    Author     : dika
--%>


<%@page import="javax.swing.JDialog"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>

<%
  String nip= request.getParameter("ed_nip");

    Laundry.Method Pegawai = new Laundry.Method();

   
     JDialog.setDefaultLookAndFeelDecorated(true);
    int x = JOptionPane.showConfirmDialog(null, "Do you want to Delete "+nip+"?", "Deleting ",
        JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
    if (x == JOptionPane.NO_OPTION) {
      System.out.println("JOptionPane closed");
    } else  if (Pegawai.hapusPeg(nip));
      System.out.println("Yes button clicked");
    response.sendRedirect("MelihatPegawai.jsp");

%>
