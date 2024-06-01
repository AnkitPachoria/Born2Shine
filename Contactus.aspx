<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--Page Title-->
    <section class="page-title" style="background-image: url(images/main-slider/slide2.jpg);">
        <div class="auto-container">
            <h1>Contact Us</h1>
        </div>
    </section>


    <!--Contact Section-->
    <section class="contact-section">
        <div class="auto-container">
            <!--Section Title-->
            <div class="row justify-content-center">
                <div class="col-md-6" style="background-color: #f1eaea;">
                    <div class="sec-title-one">
                        <h2>Leave a messsge here</h2>
                    </div>
                    <div class="contact-form default-form">

                        <div class="row clearfix">

                            <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="txtname" runat="server" type="text" name="firstname" value="" placeholder="First Name *"></asp:TextBox>
                            </div>

                            <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="txtlastname" runat="server" type="text" name="lastname" value="" placeholder="Last Name *"></asp:TextBox>

                            </div>

                            <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="txtemail" runat="server" type="email" name="email" value="" placeholder="Email *"></asp:TextBox>

                            </div>

                            <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="txtsubject" runat="server" type="text" name="subject" value="" placeholder="Subject *"></asp:TextBox>

                            </div>

                            <div class="form-group col-md-12 col-sm-1s2 col-xs-12">
                                <asp:TextBox ID="txtmassage" runat="server" name="message" placeholder="Message"></asp:TextBox>

                            </div>
                            <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                <div class="text-center">
                                    <asp:Button ID="ddd" runat="server" Text="Submit" type="submit"  class="btn btn-primary" OnClick="btnsubmit_click"  CssClas="theme-btn btn-style-one" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-md-6">
                    <div style="max-width: 100%; list-style: none; transition: none; overflow: hidden; width: 545px; height: 429px;">
                        <div id="embed-map-canvas" style="height: 100%; width: 100%; max-width: 100%;">
                           <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3556.5183902316903!2d75.7700584245838!3d26.950478508468137!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1s%20Flat%20No.%20-601%2C%20Opposite%20Dher%20ke%20balaji%20mandir%2C%20Arihant%20shree%20krishnam%20residency%2C%20Jaipur%2C%20Jaipur%2C%20Rajasthan%2C%20302020!5e0!3m2!1sen!2sin!4v1699004392656!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                        <a class="from-embedmap-code" rel="nofollow" href="https://www.bootstrapskins.com/themes" id="get-data-for-map">premium bootstrap themes</a><style>
                                                                                                                                                                        #embed-map-canvas img.text-marker {
                                                                                                                                                                         }
                                                                                                                                                                    </style></div>
                </div>
            </div>

        </div>
    </section>

    <section class="info-section">
        <div class="auto-container">
            <div class="row clearfix">

                <!--Info Column-->
                <div class="info-column col-md-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                    <div class="column-header">
                        <h3>Address</h3>
                    </div>
                    <div class="info-box">
                        <div class="inner">
                            <div class="icon"><span class="flaticon-placeholder"></span></div>
                            <h4>Address</h4>
                            <div class="text">Flat No. -601, Opposite Dher ke balaji mandir, Arihant shree krishnam residency, Jaipur, Jaipur, Rajasthan, 302020</div>
                        </div>
                    </div>
                </div>

                <!--Info Column-->
                <div class="info-column col-md-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-delay="300ms" data-wow-duration="1500ms">
                    <div class="column-header">
                        <h3>Call Now</h3>
                    </div>
                    <div class="info-box">
                        <div class="inner">
                            <div class="icon"><span class="flaticon-technology-4"></span></div>
                            <h4>Call to Us</h4>
                            <div class="text">
                                +91 7665293678
                                <br>
                            </div>
                        </div>
                    </div>
                </div>

                <!--Info Column-->
                <div class="info-column col-md-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-delay="600ms" data-wow-duration="1500ms">
                    <div class="column-header">
                        <h3>Emails us</h3>
                    </div>
                    <div class="info-box">
                        <div class="inner">
                            <div class="icon"><span class="flaticon-envelope"></span></div>
                            <h4>Info Services</h4>
                            <div class="text">born2shine12345@gmail.com</div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</asp:Content>

