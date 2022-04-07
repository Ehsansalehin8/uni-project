<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>


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
                    <li style="background-image: url(images/img_bg_2.jpg);" data-stellar-background-ratio="0.5">
                        <div class="overlay"></div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3 slider-text">
                                    <div class="slider-text-inner text-center">
                                        <div class="desc">
                                            <h1>صفحه گزارش گیری</h1>
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

                                    <asp:Button ID="btnReportComment" runat="server" Text="گزارش پیام های ارسالی" OnClick="btnReportComment_Click" CssClass="btn btn-primary" Height="40px" Width="180px" /><br />
                                    <br />
                                    <asp:Button ID="btnSabtNamReport" runat="server" Text="گزارش خرید" OnClick="btnSabtNamReport_Click" CssClass="btn btn-primary" Height="40px" Width="180px" /><br />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="widget stacked">
                                <div class="widget-header">
                                    <h3>اطلاعات آماری</h3>
                                </div>
                                <!-- /widget-header -->
                                <div class="widget-content">

                                    <asp:Panel ID="PanelReportComment" runat="server" Visible="false">
                                        <asp:Label ID="Label1" Font-Bold="true" runat="server" Text="پیام های ارسالی کاربران"></asp:Label>
                                        <asp:GridView ID="gvComment" runat="server" OnRowDataBound="gvComment_RowDataBound" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="gvComment_PageIndexChanging"></asp:GridView>
                                    </asp:Panel>
                                    <asp:Panel ID="PanelSabtnam" runat="server" Visible="false">
                                        <div class="col-md-12 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                                <asp:TextBox ID="txtsearc" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <asp:Button ID="Button1" runat="server" Text="فیلتر تاریخ" OnClick="Button1_Click" CssClass="btn btn-primary" Height="40px" Width="180px" /><br />
                                        <br />
                                        <div>
                                            <div class="form-group">
                                                <asp:Label ID="Label2" Font-Bold="true" runat="server" Text="خرید ها"></asp:Label>
                                                <asp:GridView ID="gvSabtNamjadid" runat="server" OnRowDataBound="gvSabtNamjadid_RowDataBound" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="gvSabtNamjadid_PageIndexChanging"></asp:GridView>
                                                <br />
                                            </div>
                                        </div>
                                    </asp:Panel>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

