<%--
    Document   : Order
    Created on : Nov 14, 2011, 8:59:08 PM
    Author     : Achmad
--%>
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.lang.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>E-Laundry</title>
<link rel="stylesheet" href="css/screen.css" type="text/css" media="screen" title="default" />
<!--[if IE]>
<link rel="stylesheet" media="all" type="text/css" href="css/pro_dropline_ie.css" />
<![endif]-->

<!--  jquery core -->
<script src="js/jquery/jquery-1.4.1.min.js" type="text/javascript"></script>

<!--  checkbox styling script -->
<script src="js/jquery/ui.core.js" type="text/javascript"></script>
<script src="js/jquery/ui.checkbox.js" type="text/javascript"></script>
<script src="js/jquery/jquery.bind.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	$('input').checkBox();
	$('#toggle-all').click(function(){
 	$('#toggle-all').toggleClass('toggle-checked');
	$('#mainform input[type=checkbox]').checkBox('toggle');
	return false;
	});
});
</script>

<![if !IE 7]>

<!--  styled select box script version 1 -->
<script src="js/jquery/jquery.selectbox-0.5.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect').selectbox({ inputClass: "selectbox_styled" });
});
</script>


<![endif]>

<!--  styled select box script version 2 -->
<script src="js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect_form_1').selectbox({ inputClass: "styledselect_form_1" });
	$('.styledselect_form_2').selectbox({ inputClass: "styledselect_form_2" });
});
</script>

<!--  styled select box script version 3 -->
<script src="js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect_pages').selectbox({ inputClass: "styledselect_pages" });
});
</script>

<!--  styled file upload script -->
<script src="js/jquery/jquery.filestyle.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8">
  $(function() {
      $("input.file_1").filestyle({
          image: "images/forms/choose-file.gif",
          imageheight : 21,
          imagewidth : 78,
          width : 310
      });
  });
</script>

<!-- Custom jquery scripts -->
<script src="js/jquery/custom_jquery.js" type="text/javascript"></script>

<!-- Tooltips -->
<script src="js/jquery/jquery.tooltip.js" type="text/javascript"></script>
<script src="js/jquery/jquery.dimensions.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
	$('a.info-tooltip ').tooltip({
		track: true,
		delay: 0,
		fixPNG: true,
		showURL: false,
		showBody: " - ",
		top: -35,
		left: 5
	});
});
</script>


<!--  date picker script -->
<link rel="stylesheet" href="css/datePicker.css" type="text/css" />
<script src="js/jquery/date.js" type="text/javascript"></script>
<script src="js/jquery/jquery.datePicker.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8">
        $(function()
{

// initialise the "Select date" link
$('#date-pick')
	.datePicker(
		// associate the link with a date picker
		{
			createButton:false,
			startDate:'01/01/2005',
			endDate:'31/12/2020'
		}
	).bind(
		// when the link is clicked display the date picker
		'click',
		function()
		{
			updateSelects($(this).dpGetSelected()[0]);
			$(this).dpDisplay();
			return false;
		}
	).bind(
		// when a date is selected update the SELECTs
		'dateSelected',
		function(e, selectedDate, $td, state)
		{
			updateSelects(selectedDate);
		}
	).bind(
		'dpClosed',
		function(e, selected)
		{
			updateSelects(selected[0]);
		}
	);

var updateSelects = function (selectedDate)
{
	var selectedDate = new Date(selectedDate);
	$('#d option[value=' + selectedDate.getDate() + ']').attr('selected', 'selected');
	$('#m option[value=' + (selectedDate.getMonth()+1) + ']').attr('selected', 'selected');
	$('#y option[value=' + (selectedDate.getFullYear()) + ']').attr('selected', 'selected');
}
// listen for when the selects are changed and update the picker
$('#d, #m, #y')
	.bind(
		'change',
		function()
		{
			var d = new Date(
						$('#y').val(),
						$('#m').val()-1,
						$('#d').val()
					);
			$('#date-pick').dpSetSelected(d.asString());
		}
	);

// default the position of the selects to today
var today = new Date();
updateSelects(today.getTime());

// and update the datePicker to reflect it...
$('#d').trigger('change');
});
</script>

<!-- MUST BE THE LAST SCRIPT IN <HEAD></HEAD></HEAD> png fix -->
<script src="js/jquery/jquery.pngFix.pack.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
$(document).pngFix( );
});
</script>
</head>
<body>
<!-- Start: page-top-outer -->
<div id="page-top-outer">

<!-- Start: page-top -->
<div id="page-top">

	<!-- start logo -->
	<div id="logo">
	<a href=""><img src="" width="156" height="40" alt="" /></a>
	</div>
	<!-- end logo -->


 	<div class="clear"></div>

</div>
<!-- End: page-top -->

</div>
<!-- End: page-top-outer -->

<div class="clear">&nbsp;</div>

<!--  start nav-outer-repeat................................................................................................. START -->
<div class="nav-outer-repeat">
<!--  start nav-outer -->
<div class="nav-outer">

		<!-- start nav-right -->
		<div id="nav-right">



			<!--  start account-content -->
			<div class="account-content">
			<div class="account-drop-inner">
				<a href="" id="acc-settings">Settings</a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-details">Personal details </a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-project">Project details</a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-inbox">Inbox</a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-stats">Statistics</a>
			</div>
			</div>
			<!--  end account-content -->

		</div>
		<!-- end nav-right -->


		<!--  start nav -->
		<div class="nav">
		<div class="table">

		<ul  class="current" ><li><a href=""><b>Paket Laundry</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub show">
			<ul class="sub">
				<li class="sub_show"  ><a href="paketlaundry.jsp">Input Paket</a></li>
				<li  ><a href="lihatpaket.jsp">Lihat Paket</a></li>
			</ul>
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>

		<div class="nav-divider">&nbsp;</div>

		<ul  class="select"  ><li><a href=""><b>Order Laundry</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub show">
			<ul class="sub">
				<li  ><a href="order.jsp">Input Order</a></li>
				<li  ><a href="order.jsp">View Order</a></li>
			</ul>
		</div>
		</li>
		</ul>
		<div class="nav-divider">&nbsp;</div>

		<ul  class="select"  ><li><a href=""><b>Pelanggan</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub show">
			<ul class="sub">
				<li  ><a href="DaftarPelanggan.jsp">Registrasi Pelanggan</a></li>
				<li  ><a href="MelihatPelanggan.jsp">List Pelanggan</a></li>
			</ul>
		</div>
		</li>
		</ul>

		<div class="nav-divider">&nbsp;</div>
		<ul  class="select"  ><li><a href=""><b>Pegawai</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub show">
			<ul class="sub">
				<li  ><a href="DaftarPegawai.jsp">Registrasi Pegawai</a></li>
				<li  ><a href="MelihatPegawai.jsp">List Pegawai</a></li>

			</ul>
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>





		<div class="clear"></div>
		</div>
		<div class="clear"></div>
		</div>
		<!--  start nav -->

</div>
<div class="clear"></div>
<!--  start nav-outer -->
</div>
<!--  start nav-outer-repeat................................................... END -->

  <div class="clear"></div>

<!-- start content-outer ........................................................................................................................START -->
<div id="content-outer">
<!-- start content -->
<div id="content">

	<!--  start page-heading -->
	<div id="page-heading">
		<h1>
		Order Laundry		</h1>
	</div>
	<!-- end page-heading -->

	<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
	<tr>
		<th rowspan="3" class="sized"><img src="images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
		<th class="topleft"></th>
		<td id="tbl-border-top">&nbsp;</td>
		<th class="topright"></th>
		<th rowspan="3" class="sized"><img src="images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
	</tr>
	<tr>
		<td id="tbl-border-left"></td>
		<td>
		<!--  start content-table-inner ...................................................................... START -->
		<div id="content-table-inner">
		<div id="table-content">

         <table border="0" cellpadding="0" cellspacing="0"  id="id-form" width="100%">
            <%
             Connection con=null;
  //String dbname="jdbc:odbc:rahasia";
  String status="";
  ResultSet rs = null;
  ResultSet rs2 = null;
  try {
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost/rahasia", "root", "");
    if (con==null)
       status = "gagal";
    else
       status = "berhasil";
  }catch(ClassNotFoundException ex) {
       status = "Driver Error";
  }catch(SQLException ex) {
       status = "gagal";
  }

            Statement st = con.createStatement();
            String now=(String) session.getAttribute("ID_Pelanggan");
            Laundry.Pelanggan pelanggan = new Laundry.Pelanggan();
            //String now = pelanggan.getUsername();
            String kueri = "SELECT * FROM data_pelanggan WHERE username= '" +now+ "'";
      rs = st.executeQuery(kueri);
      if (rs != null){
         while(rs.next()){
            String nama = rs.getString(4);
            String notelp = rs.getString(5);
            String alamat = rs.getString(6);
     %>

     <tr>&nbsp;</tr>
     <tr><td align="right">Nama</td><td><%=nama%></td></tr>
     <tr><td align="right">No. Telepon</td><td><%=notelp%></td></tr>
     <tr><td align="right">Alamat</td> <td><%=alamat%></td></tr>





        </table>
        <table>
            <% String kueri2 = " SELECT TOP 5 tanggal_transaksi,paketorder FROM order_baru ORDER BY noorder DESC";
            rs2 = st.executeQuery(kueri);
      if (rs2 != null){
         while(rs.next()){
            String tanggal = rs.getString(6);
            String namaorder = rs.getString(3);

%>
                 <tr>&nbsp;</tr>
     <tr><td align="right">Tanggal Order</td><td><%=tanggal%></td></tr>
     <tr><td align="right">Paket Order</td><td><%=namaorder%></td></tr>

        <table border="0" cellpadding="0" cellspacing="0"  id="id-form" width="100%">


          <tr>
            <th valign="top">Paket Order*</th>
            <th valign="top">:
            <input name="paketorder" type="text"  /></th>
          </tr>
          <tr>
            <th valign="top">Waktu Ambil*</th>
            <th valign="top">:
            <input name="waktuambil" type="text" /></th>
          </tr>
             <tr>
            <th valign="top">Alamat Ambil*</th>
            <th valign="top">:
            <input name="alamatambil" type="text" /></th>
          </tr>

          <tr>
            <th valign="top" colspan="2"><div align="center">
              <input type="submit" name="submit" value="Submit" />
              <input type="reset" name="submit2" value="Reset" />
            </div></th>
          </tr>
      </table>
        <%
            String a = request.getParameter("status");
            if (a != null){
            out.println("data belum lengkap");
            }
            String b = request.getParameter("status2");
            if (b != null){
            out.println("Order telah berhasil dilaksanakan");
            }

        %>
    </FORM>

</div>		</div>
		<!--  end content-table-inner ............................................END  -->
		</td>
		<td id="tbl-border-right"></td>
	</tr>
	<tr>
		<th class="sized bottomleft"></th>
		<td id="tbl-border-bottom">&nbsp;</td>
		<th class="sized bottomright"></th>
	</tr>
	</table>
	<div class="clear">&nbsp;</div>

</div>
<!--  end content -->
<div class="clear">&nbsp;</div>
</div>
<!--  end content-outer........................................................END -->

<div class="clear">&nbsp;</div>

<!-- start footer -->
<div id="footer">
<!-- <div id="footer-pad">&nbsp;</div> -->
	<!--  start footer-left -->
	<div id="footer-left">
	design by K4M4L</div>
	<!--  end footer-left -->
	<div class="clear">&nbsp;</div>
</div>
<!-- end footer -->

</body>
</html>