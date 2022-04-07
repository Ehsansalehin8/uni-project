<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MemberKala.aspx.cs" Inherits="MemberKala" %>

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
                    <li style="background-image: url(images/img_bg_6.jpg);" data-stellar-background-ratio="0.5">
                        <div class="overlay"></div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3 slider-text">
                                    <div class="slider-text-inner text-center">
                                        <div class="desc">
                                            <h1>مشاهده خرید ها</h1>
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
                                <h3>پنل کاربر عضو</h3>
                            </div>
                            <!-- /widget-header -->

                            <div class="widget-content">
                                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/HonarJoueKala.aspx">مشاهده خریدهای انجام شده</asp:HyperLink><br />
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ContactAdmin.aspx">ارتباط با مدیر</asp:HyperLink><br />
                                    <br />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="widget stacked">
                            <div class="widget-header">
                                <h3>خرید های شما</h3>
                            </div>
                            <!-- /widget-header -->

                            <div class="widget-content">
                                <asp:Label ID="Label1" Font-Bold="true" runat="server" Text="لیست خرید"></asp:Label>
                                <asp:GridView ID="gvKala" runat="server" OnRowDataBound="gvKala_RowDataBound" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="gvKala_PageIndexChanging"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

