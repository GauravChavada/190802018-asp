<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminregister.aspx.cs" Inherits="admin_adminregister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>Register</title>
  <!-- loader-->
  <link href="assets/css/pace.min.css" rel="stylesheet"/>
  <script src="assets/js/pace.min.js"></script>
  <!--favicon-->
  <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
  <!-- Bootstrap core CSS-->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Custom Style-->
  <link href="assets/css/app-style.css" rel="stylesheet"/>
</head>
<body>
     <body class="bg-theme bg-theme1">

<!-- start loader -->
   <div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
   <!-- end loader -->

<!-- Start wrapper-->
 <div id="wrapper">

 <div class="loader-wrapper"><div class="lds-ring"><div></div><div></div><div></div><div></div></div></div>
	<div class="card card-authentication1 mx-auto my-5">
		<div class="card-body">
		 <div class="card-content p-2">
		 	<div class="text-center">
		 		<img src="assets/images/logo-icon.png" alt="logo icon">
		 	</div>
		  <div class="card-title text-uppercase text-center py-3">Registration Form</div>
		    <form id="Form1" runat="server">
			  <div class="form-group">
	
			   <div class="position-relative has-icon-right">
                   <%--<asp:TextBox ID="TextBox1"  runat="server" class="form-control input-shadow" placeholder="Enter Username"></asp:TextBox>--%>
                   <%--<asp:TextBox ID="TextBox1" runat="server" class="form-control input-shadow" placeholder="Enter Username"></asp:TextBox>--%>
                   <asp:TextBox ID="TextBox1" runat="server" class="form-control input-shadow" placeholder="Enter Username"></asp:TextBox>

				  <div class="form-control-position">  
				  </div>
			   </div>
			  </div>
			  <div class="form-group">
			 
			   <div class="position-relative has-icon-right">
                   <%--<asp:TextBox ID="TextBox2" runat="server" type="password" class="form-control input-shadow" placeholder="Enter Password"></asp:TextBox>--%>
                  <%-- <asp:TextBox ID="TextBox2" runat="server" type="email" class="form-control input-shadow" placeholder="Enter Email"></asp:TextBox>--%>
                   <asp:TextBox ID="TextBox2" runat="server" type="email" class="form-control input-shadow" placeholder="Enter Email"></asp:TextBox>
				  <div class="form-control-position">  
				  </div>
			   </div>
			  </div>
                <div class="form-group">
			
			   <div class="position-relative has-icon-right">
                   <%--<asp:TextBox ID="TextBox2" runat="server" type="password" class="form-control input-shadow" placeholder="Enter Password"></asp:TextBox>--%>
                   <asp:TextBox ID="TextBox3" runat="server" type="password" class="form-control input-shadow" placeholder="Enter Password"></asp:TextBox>
				  <div class="form-control-position">  
				  </div>
			   </div>
			  </div>
			<div class="form-row">
			 <div class="form-group col-6">
			   <div class="icheck-material-white">
                <input type="checkbox" id="user-checkbox"  />
                <label for="user-checkbox">Remember me</label>
			  </div>
			 </div>
			 <div class="form-group col-6 text-right mt-1">
			  <a href="reset-password.html">Reset Password</a>
			 </div>
			</div>
		
             <%--<asp:Button ID="Button2" type="submit" class="btn btn-light btn-block" runat="server" Text="Login" onclick="demo" />--%>
            <asp:Button ID="Button1" runat="server" class="btn btn-light btn-block" Text="Register" onclick="register"/>
			 </form>
		   </div>
		  </div>
		   <div class="card-footer text-center py-3">
		    <p class="text-warning mb-0">Already A Member? <a href="adminlogin.aspx">Login Here</a></p>
		  </div>
	     </div>
    
     <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
	
	<!--start color switcher-->
   
  <!--end color switcher-->
	
	</div><!--wrapper-->
	
  <!-- Bootstrap core JavaScript-->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
	
  <!-- sidebar-menu js -->
  <script src="assets/js/sidebar-menu.js"></script>
  
  <!-- Custom scripts -->
  <script src="assets/js/app-script.js"></script>
</body>
</html>
