<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactAdmin.aspx.cs" Inherits="ContactAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="colorlib-page">
        <header>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="colorlib-navbar-brand">
                        </div>
                        <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
                    </div>
                </div>
            </div>
        </header>
        <aside id="colorlib-hero">
            <div class="flexslider">
                <ul class="slides">
                    <li style="background-image: url(images/img_bg_4.jpg);" data-stellar-background-ratio="0.5">
                        <div class="overlay"></div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3 slider-text">
                                    <div class="slider-text-inner text-center">
                                        <div class="desc">
                                            <span class="icon"><i class="glyphicon-envelope"></i></span>
                                            <h1>تماس با مدیریت سایت</h1>
                                            <div class="desc2"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <br />
        </aside>
        <div class="main">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-3">
                            <div class="widget stacked">
                                <div class="widget-header">
                                    <h3>پنل مشتری</h3>
                                </div>
                                <!-- /widget-header -->

                                <div class="widget-content">
                                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/MemberKala.aspx">مشاهده خریدهای انجام شده</asp:HyperLink><br />
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ContactAdmin.aspx">ارتباط با مدیر</asp:HyperLink><br />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="widget stacked">
                                <div class="widget-header">
                                    <h3>تماس با مدیر</h3>
                                </div>
                                <!-- /widget-header -->
                                <div class="widget-content">
                                    <table style="width: 100%;">
                                        <tr>
                                            <td>آدرس ایمیل
                                            </td>
                                            <td>
                                                <div class="col-md-12 inputGroupContainer">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>دیدگاه شما</td>
                                            <td>
                                                <div class="col-md-12 inputGroupContainer">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                                        <asp:TextBox ID="txtComment" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label></td>
                                            <td>
                                                <div class="form-group">
                                                    <label class="col-md-10 control-label"></label>
                                                    <div class="col-md-4">
                                                        <asp:Button ID="btnSubmit" runat="server" Text="ارسال دیدگاه" OnClick="btnSubmit_Click" CssClass="btn btn-warning"></asp:Button>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

