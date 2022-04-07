<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
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
        <aside id="colorlib-hero">
            <div class="flexslider">
                <ul class="slides">
                    <li style="background-image: url(images/img_bg_6.jpg);">
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
                                            <div class="account-container stacked">

            <div class="content clearfix">

                <div>
                    <h1>ورود کاربران</h1>

                    <div class="login-fields">

                        <p>ورود با استفاده از حساب کاربری:</p>

                        <div class="field">
                            <label for="username">نام کاربری:</label>
                            <asp:TextBox ID="txtUserName" runat="server" class="form-control input-lg username-field" placeholder="نام کاربری"></asp:TextBox>
                        </div>
                        <!-- /field -->

                        <div class="field">
                            <label for="password">کلمه عبور:</label>
                            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" placeholder="کلمه عبور" class="form-control input-lg password-field"></asp:TextBox>
                        </div>
                        <!-- /password -->

                    </div>
                    <!-- /login-fields -->

                    <div class="login-actions">


                        <asp:Button ID="btnLogIn" runat="server" Text="ورود به سایت" class="login-action btn btn-primary" OnClick="btnLogIn_Click" />
                        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                    </div>
                    <!-- .actions -->

                </div>

            </div>
            <!-- /content -->

        </div>
        <!-- /account-container -->


        <!-- Text Under Box -->
        <div class="login-extra">
            حساب کاربری ندارید؟ <a href="./SignUp.aspx">ثبت نام</a><br />
        </div>
        <!-- /login-extra -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


</asp:Content>

