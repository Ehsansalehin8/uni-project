<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageUser.aspx.cs" Inherits="ManageUser" %>

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
                                            <h1>صفحه مدیریت</h1>
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
                                <i class="icon-star"></i>
                                <h3>پنل مدیریت</h3>

                            </div>
                            <!-- /widget-header -->

                            <div class="widget-content">
                                    <asp:hyperlink id="HyperLink5" navigateurl="~/KalaPage.aspx" runat="server">مدیریت کالا</asp:hyperlink><br />
                                    <asp:hyperlink id="HyperLink1" navigateurl="~/ManageUser.aspx" runat="server">مدیریت کاربران</asp:hyperlink><br />
                                    <asp:hyperlink id="HyperLink3" runat="server" navigateurl="~/Search.aspx">جست وجو</asp:hyperlink><br />
                                    <asp:hyperlink id="HyperLink4" runat="server" navigateurl="~/Report.aspx">گزارش گیری</asp:hyperlink><br />
                                    <br />

                                <asp:Button ID="btnPanelAddUser" runat="server" Text="افزودن کاربر" OnClick="btnPanelAddUser_Click" CssClass="btn btn-primary" Height="40px" Width="180px" /><br />
                                <br />
                                <asp:Button ID="btnPanelDeleteUser" runat="server" Text="ویرایش و حذف کاربر" OnClick="btnPanelDeleteUser_Click" CssClass="btn btn-primary" Height="40px" Width="180px" /><br />
                                <br />
                                <asp:Button ID="btnPanelAddRole" runat="server" Text="اضافه کردن نقش" OnClick="btnPanelAddRole_Click" CssClass="btn btn-primary" Height="40px" Width="180px" /><br />
                                <br />


                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="widget stacked">
                            <div class="widget-header">
                                <h3>مدیریت کاربران</h3>
                            </div>
                            <!-- /widget-header -->
                            <div class="widget-content">
                                <asp:Panel ID="PanelAddUser" runat="server" Visible="false">
                                    <table style="width: 80%;">
                                        <tr>
                                            <td>نام کاربری</td>
                                            <td>
                                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox></td>

                                        </tr>
                                        <tr>
                                            <td>ایمیل</td>
                                            <td>
                                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox></td>

                                        </tr>
                                        <tr>
                                            <td>کلمه عبور</td>
                                            <td>
                                                <asp:TextBox ID="txtPass" runat="server" CssClass="form-control"></asp:TextBox></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label></td>
                                            <td>
                                                <asp:Button ID="btnAddUser" runat="server" Text="اضافه کردن کاربر" OnClick="btnAddUser_Click" CssClass="btn btn-primary" Height="40px" Width="150px" /></td>

                                        </tr>
                                    </table>
                                </asp:Panel>
                                <asp:Panel ID="PanelDeleteUser" runat="server" Visible="false">
                                    <asp:Label ID="Label3" Font-Bold="true" runat="server" Text="کاربران سیستم"></asp:Label>
                                    <asp:GridView ID="gvUser" runat="server" OnRowCommand="gvUser_RowCommand" OnRowDataBound="gvUser_RowDataBound" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="gvUser_PageIndexChanging">
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server"
                                                        CommandArgument='<%# Eval("ID") %>' CommandName="remove"
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
                                <asp:Panel ID="PanelEditUser" runat="server" Visible="false">
                                    <asp:GridView ID="gvEditUser" runat="server">
                                        <Columns>
                                            <asp:ButtonField CommandName="Edit" HeaderText="edit" ShowHeader="True" Text="edit" />
                                        </Columns>
                                    </asp:GridView>
                                </asp:Panel>
                                <asp:Panel ID="PanelUpdateUser" runat="server" Visible="false">
                                    <table style="width: 100%;">
                                        <tr>
                                            <td>نام کاربری</td>
                                            <td>
                                                <asp:TextBox ID="txtUpdateUsername" runat="server"></asp:TextBox></td>

                                        </tr>
                                        <tr>
                                            <td>ایمیل</td>
                                            <td>
                                                <asp:TextBox ID="txtUpdateEmail" runat="server"></asp:TextBox></td>

                                        </tr>
                                        <tr>
                                            <td>کلمه عبور</td>
                                            <td>
                                                <asp:TextBox ID="txtUpdatePass" runat="server"></asp:TextBox></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblResultUpdate" runat="server" Text=""></asp:Label></td>
                                            <td>
                                                <asp:Button ID="btnUpdate" runat="server" Text="بروزکردن اطلاعات" OnClick="btnUpdate_Click" CssClass="btn btn-primary" /></td>

                                        </tr>
                                    </table>
                                </asp:Panel>
                                <asp:Panel ID="PanelAddRole" Visible="false " runat="server">
                                    <asp:Label ID="Label1" Font-Bold="true" runat="server" Text="کاربران و نقش آنها"></asp:Label>
                                    <asp:GridView ID="gvAddRole" runat="server" OnRowDataBound="gvAddRole_RowDataBound" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="gvAddRole_PageIndexChanging"></asp:GridView>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label2" Font-Bold="true" runat="server" Text="کاربران سیستم"></asp:Label>
                                    <asp:GridView ID="gvAllUser" runat="server" OnRowCommand="gvAllUser_RowCommand" OnRowDataBound="gvAllUser_RowDataBound" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="gvAllUser_PageIndexChanging">

                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lkbAddRole" runat="server"
                                                        CommandArgument='<%# Eval("ID") %>' CommandName="AddRole">افزودن نقش</asp:LinkButton>
                                                    &nbsp;

                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>

                                </asp:Panel>
                                <br />
                                <br />
                                <asp:Panel ID="PanelCreateRole" runat="server" Visible="false">
                                    <hr />
                                    <br />
                                    <table style="width: 80%;">
                                        <tr>
                                            <td>کد کاربر</td>
                                            <td>
                                                <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>

                                            </td>
                                        </tr>


                                        <tr>
                                            <td>نوع نقش</td>
                                            <td>
                                                <asp:DropDownList ID="ddlRole" runat="server"></asp:DropDownList></td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <asp:Button ID="btnAddRole" runat="server" Text="اضافه کردن نقش" OnClick="btnAddRole_Click" CssClass="btn btn-primary" /></td>
                                            <td>
                                                <asp:Label ID="lblAddRoleResult" runat="server" Text=""></asp:Label></td>
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

