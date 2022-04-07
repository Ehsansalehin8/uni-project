<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewKala.aspx.cs" Inherits="ViewKala" %>

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
                                            <span class="icon"><i class="icon-amazon"></i></span>
                                            <h1>خرید</h1>
                                            <div class="desc2"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </aside>


        <div class="colorlib-reservation reservation-page">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 text-center animate-box intro-heading">
                        <h2>فرم خرید محصول</h2>
                        <p>لطفا تمامی فیلدها را با دقت پرنمایید در اسرع وقت با شما تماس می گیریم ، باتشکر</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="row">
                            <div class="col-md-12">
                                <form method="post" class="colorlib-form">
                                    <div class="row">
                                        <div class="col-md-6 animate-box">
                                            <div class="form-group">
                                                <label for="name">نام کالا</label>
                                                <div class="form-field">
                                                    <asp:TextBox ID="TextBox1" runat="server" class="btn btn-secondary btn-block"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 animate-box">
                                            <div class="form-group">
                                                <label for="email">نام و نام خانودگی</label>
                                                <div class="form-field">
                                                    <asp:TextBox ID="TextBox2" runat="server" class="btn btn-secondary btn-block"></asp:TextBox>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 animate-box">
                                            <div class="form-group">
                                                <label for="phone">تلفن</label>
                                                <div class="form-field">
                                                    <asp:TextBox ID="TextBox3" runat="server" class="btn btn-secondary btn-block"></asp:TextBox>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 animate-box">
                                            <div class="form-group">
                                                <label for="date">توضیحات کالا</label>
                                                <div class="form-field">
                                                    <asp:TextBox ID="TextBox4" runat="server" class="btn btn-secondary btn-block"></asp:TextBox>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 animate-box">
                                            <div class="form-group">
                                                <label for="date">هزینه</label>
                                                <div class="form-field">
                                                    <asp:TextBox ID="TextBox5" runat="server" class="btn btn-secondary btn-block"></asp:TextBox>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12 animate-box">
                                            <div class="row">
                                                <div class="col-md-4 col-md-offset-4">
                                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  class="btn btn-primary btn-block" Text="خرید کالا" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>

