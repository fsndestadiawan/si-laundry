<%@ page import="java.sql.*" %>
<%
            String user = request.getParameter("ID_pelanggan");
            String pass = request.getParameter("pass_pelanggan");
            //String usercek = request.getParameter("username");
            //String passcek = request.getParameter("password");


            Laundry.Method pelanggan = new Laundry.Method();
            //pelanggan.cekUserPass(user,pass);

            if (user == "" || pass == "") {
              response.sendRedirect("LoginPelanggan.jsp?eror1=1");
            } else
                if (pelanggan.cekLogin(user,pass)== true) {
                //if (user == usercek){
                    //if (pass == passcek){
                    session.setAttribute("ID_Pelanggan",user);
                    response.sendRedirect("HomePelanggan.jsp");
                } else {
                    response.sendRedirect("LoginPelanggan.jsp?eror2=1");
                }
            //}//else {
               //response.sendRedirect("login_pel.jsp?eror3=1");
           // }

%>