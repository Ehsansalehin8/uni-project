<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

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
                                            <h1>جستجو</h1>
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
                                    <h3>پنل مدیریت</h3>
                                </div>
                                <!-- /widget-header -->

                                <div class="widget-content">
                                    <asp:hyperlink id="HyperLink5" navigateurl="~/KalaPage.aspx" runat="server">مدیریت کالا</asp:hyperlink><br />
                                    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/ManageUser.aspx" runat="server">مدیریت کاربران</asp:HyperLink><br />
                                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Search.aspx">جست وجو</asp:HyperLink><br />
                                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Report.aspx">گزارش گیری</asp:HyperLink><br />
                                    <br />

                                    <asp:TextBox ID="txtSearch" runat="server" Height="40px" Width="180px"></asp:TextBox><br />
                                    <br />
                                    <asp:Button ID="btnSearchName" runat="server" Text="جستجو براساس نام کالا" OnClick="btnSearchName_Click" CssClass="btn btn-primary" Height="40px" Width="180px" /><br />
                                    <br />
                                    <asp:Button ID="btnTermSearch" runat="server" Text="جستجو براساس قیمت کالا" OnClick="btnTermSearch_Click" CssClass="btn btn-primary" Height="40px" Width="180px" /><br />
                                    <br />

                                </div>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="widget stacked">
                                <div class="widget-header">
                                    <h3>جستجو</h3>
                                </div>
                                <!-- /widget-header -->

                                <div class="widget-content">
                                    <asp:GridView ID="gvSearch" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True"></asp:GridView>
                                </div>

                                <div class="widget-content">
                                    <asp:GridView ID="GridView1" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True"></asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

