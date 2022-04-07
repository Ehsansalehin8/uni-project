<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KalaPage.aspx.cs" Inherits="KalaPage" %>


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
                    <li style="background-image: url(images/img_bg_1.jpg);" data-stellar-background-ratio="0.5">
                        <div class="overlay"></div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3 slider-text">
                                    <div class="slider-text-inner text-center">
                                        <div class="desc">
                                            <h1>صفحه مدیریت کالا</h1>
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
                                    <h3>پنل فروشنده</h3>
                                </div>
                                <!-- /widget-header -->

                                <div class="widget-content">

                                    <asp:HyperLink ID="HyperLink5" NavigateUrl="~/KalaPage.aspx" runat="server">مدیریت کالا</asp:HyperLink>
                                    <br />
                                    <br />
                                    <br />

                                    <asp:Button ID="btnPanelAddKala" runat="server" Text="اضافه کردن کالا" OnClick="btnPanelAddKala_Click" CssClass="btn btn-primary" Height="40px" Width="180px" /><br />
                                    <br />
                                    <asp:Button ID="btnPanelDeleteEditKala" runat="server" Text="ویرایش و حذف کالا" OnClick="btnPanelDeleteEditKala_Click" CssClass="btn btn-primary" Height="40px" Width="180px" /><br />
                                    <br />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="widget stacked">
                                <div class="widget-header">
                                    <h3>مدیریت کالا</h3>
                                </div>
                                <!-- /widget-header -->

                                <div class="widget-content">
                                    <asp:Panel ID="PanelAddKala" runat="server" Visible="false">
                                        <table style="width: 80%;">
                                            <tr>

                                                <td>نام کالا</td>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox></td>
                                            </tr>
                                            <tr>

                                                <td>توضیحات</td>
                                                <td>
                                                    <asp:TextBox ID="txtDescriptionKala" runat="server" TextMode="MultiLine" MaxLength="3500" CssClass="form-control"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>قیمت</td>
                                                <td>
                                                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox></td>
                                            </tr>
                                            <tr>

                                                <td>
                                                    <asp:Label ID="lblAddResult" runat="server" Text=""></asp:Label></td>
                                                <td>
                                                    <asp:Button ID="btnAddKala" runat="server" Text="اضافه کردن کالا" OnClick="btnAddKala_Click" CssClass="btn btn-primary" Height="40px" Width="150px" /></td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:Panel ID="PanelDeleteEditKala" runat="server" Visible="false">
                                        <asp:Label ID="Label1" Font-Bold="true" runat="server" Text="کالا های فعلی"></asp:Label>
                                        <asp:GridView ID="gvKala" runat="server" OnRowCommand="gvKala_RowCommand" OnRowDataBound="gvKala_RowDataBound" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="gvKala_PageIndexChanging">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server"
                                                            CommandArgument='<%# Eval("ID") %>' CommandName="Remove"
                                                            OnClientClick="return confirm('آیا از حذف اطمینان دارید؟');">حذف</asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server"
                                                            CommandArgument='<%# Eval("ID") %>' CommandName="change">ویرایش</asp:LinkButton>
                                                        &nbsp;

                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </asp:Panel>
                                    <br />
                                    <asp:Panel ID="PanelUpdateKala" runat="server" Visible="false">
                                        <table style="width: 80%;">
                                            <tr>

                                                <td>نام کالا</td>
                                                <td>
                                                    <asp:TextBox ID="txtUpdateName" runat="server" CssClass="form-control"></asp:TextBox></td>
                                            </tr>
                                            <tr>

                                                <td>توضیحات</td>
                                                <td>
                                                    <asp:TextBox ID="txtUpdateDescriptionKala" runat="server" TextMode="MultiLine" MaxLength="3500" CssClass="form-control"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>قیمت</td>
                                                <td>
                                                    <asp:TextBox ID="txtUpdatePrice" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                </td>
                     
                                
                                <td>
                                    <asp:Label ID="lblUpdateResult" runat="server" Text=""></asp:Label></td>
                                                <td>
                                                    <asp:Button ID="btnUpdateKala" runat="server" Text="بروزرسانی اطلاعات کالا" OnClick="btnUpdateKala_Click" CssClass="btn btn-primary" Height="40px" Width="150px" /></td>
                                            </tr>
                                        </table>
                                    </asp:Panel>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

