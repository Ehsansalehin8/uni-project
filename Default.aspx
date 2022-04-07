<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
                    <li style="background-image: url(images/img_bg_1.jpg);">
                        <div class="overlay"></div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3 slider-text">
                                    <div class="slider-text-inner text-center">
                                        <div class="desc">
                                            <h1>فروشگاه لوازم الکترونیکی</h1>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="mouse">
                    <a href="#" class="mouse-icon">
                        <div class="mouse-wheel"></div>
                    </a>
                </div>
            </div>
        </aside>
        <div class="goto-here"></div>
        <div class="colorlib-menu">
            <div class="container">
                <div class="colorlib-menu-2">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3 text-center animate-box intro-heading">
                            <br />
                            <span class="icon"><i class="icon-amazon"></i></span>
                            <h2>محصولات فروشگاه</h2>
                        </div>
                    </div>
                    <div class="main">
                        <div class="container center-block text-center" style="margin-left: auto; margin-right: auto;">
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1 text-center center-block">
                                    <div class="widget-content">
                                        <asp:GridView ID="GvKala" runat="server" Font-Bold="true" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="Kala_PageIndexChanging"
                                            OnRowDataBound="Kala_RowDataBound" OnRowCommand="Kala_RowCommand">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lkbAddRole" runat="server"
                                                            CommandArgument='<%#Eval("ID")+","+ Eval("Name")+","+ Eval("Description")+","+ Eval("Price")%>'
                                                            CommandName="SabtNam">خرید</asp:LinkButton>
                                                        &nbsp;
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

