<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
            <div id="colorlib-page">
        <header>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
                    </div>
                </div>
            </div>
        </header>
                    <br />


                        <aside id="colorlib-hero">
            <div class="flexslider">
                <ul class="slides">
                    <li style="background-image: url(images/img_bg_5.jpg);">
                    </li>
                </ul>
            </div>
        </aside>
        <div class="goto-here"></div>
        <div class="colorlib-menu">
            <div class="container">
                <div class="colorlib-menu-2">

                    <div class="main">
                        <div class="container center-block text-center" style="margin-left: auto; margin-right: auto;">
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1 text-center center-block">
    <div class="account-container register stacked">
	
	<div class="content clearfix">
		
		<form action="./index.html" method="post">
		
			<h1>ایجاد حساب کاربری</h1>			
			
			<div class="login-fields">
				
				<p>ایجاد حساب کاربری:</p>
				
				<div class="field">
					<label for="firstname">نام کاربری:</label>
                    <asp:TextBox ID="txtUsername" runat="server" placeholder="نام کاربری" class="form-control input-block-level"></asp:TextBox>
				</div> <!-- /field -->
				
			
				
				<div class="field">
					<label for="email">آدرس ایمیل:</label>
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="آدرس ایمیل" class="form-control input-block-level"></asp:TextBox>
				</div> <!-- /field -->
				
				<div class="field">
					<label for="password">کلمه عبور:</label>
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" placeholder="کلمه عبور" class="form-control input-block-level"></asp:TextBox>
				</div> <!-- /field -->
				
				<div class="field">
					<label for="confirm_password">تکرار کلمه عبور:</label>
                    <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password" placeholder="تکرار کلمه عبور" class="form-control"></asp:TextBox>
				</div> <!-- /field -->
				
			</div> <!-- /login-fields -->
			
			<div class="login-actions">
									
                <asp:Button ID="btnSignUp" runat="server" Text="ثبت نام" class="login-action btn btn-primary" OnClick="btnSignUp_Click" />
                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
			</div> <!-- .actions -->
			
		</form>
		
	</div> <!-- /content -->
	
</div> <!-- /account-container -->
        <!-- /account-container -->
<!-- Text Under Box -->
<div class="login-extra">
	قبلا ثبت نام کرده ام؟ <a href="./Login.aspx">ورود</a>
</div> <!-- /login-extra -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

