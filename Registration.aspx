<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registraction" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="src/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="src/css/style.css">
</head>
<body>
    
    <div>
    <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <%--<form id="register-form"  runat="server" method="POST" class="register-form"  >--%>
                        <form id="form1" runat="server">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <%--<input type="text" name="name" id="name" placeholder="Your Name"/>--%>
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <%--<input type="email" name="email" id="email" placeholder="Your Email"/>--%>
                                 <asp:TextBox ID="TextBox2" type="email" runat="server" placeholder="Your Email"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                               <%-- <input type="password" name="pass" id="pass" placeholder="Password"/>--%>
                               <asp:TextBox ID="TextBox3" type="passworrd" runat="server" placeholder="Password"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <%--<input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password"/>--%>
                                <asp:TextBox ID="TextBox4" type="text" runat="server" placeholder="Repeat your password"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <%--<input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>--%>
                                  <asp:Button ID="Button1" runat="server" Text="Sign Up" class="form-submit" OnClick="Button1_Click"></asp:Button>
                                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                            </div>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="Dynamic" 
                                ErrorMessage="Password Does Not Match" ForeColor="Red"></asp:CompareValidator>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="src/images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="login.aspx" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>
   </div>
    
</body>
</html>
