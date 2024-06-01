<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shop.aspx.cs" Inherits="Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
    <section class="page-title" style="background-image:  url(images/main-slider/slide2.jpg);  ">
        <div class="auto-container">
            <h1>Order Your Product</h1>
        </div>
    </section>
 
 



  <%--  <div class="container">
 
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body">
          <p>placed order</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  
</div>--%>


   
    <div class="shop-single">

        <!--Product Details Section-->
        <section class="product-details">
            <div class="auto-container">
                <!--Basic Details-->
                <div class="basic-details">
                    <div class="row clearfix">
                        <div class="image-column col-md-4 col-sm-5 col-xs-12">
                            <figure class="image-box">
                                <a href="images/resource/products/shop1.png" class="lightbox-image" title="Image Caption Here">
                                    <img src="images/resource/products/shop1.png" alt=""></a>
                            </figure>
                             <figure class="image-box" style="margin-top: 15px;">
                                <a href="images/resource/products/barcode.png" class="lightbox-image" title="Image Caption Here">
                                    <img src="images/resource/products/barcode.png" alt=""></a>
                            </figure>
                        </div>
                        <div class="info-column col-md-8 col-sm-7 col-xs-12">
                            <div class="details-header">
                                <h4>Hand Made Hair Oil</h4>
                                <div class="rating"><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star-half-empty"></span><span class="txt"></span></div>
                                <div class="item-price"><span class="old-price">₹624.00</span>-20%<br /> ₹499.00</div>
                            </div>


                            <div class="billing-details">
                                <div class="shop-form">

                                    <div> 
                                        <p style="color:red;">Enter your Details and Scan QR Code Order your Handmade Hair Oil.</p>
                                    </div>
                                    <div class="default-title">
                                        <h2>Billing Details</h2>
                                    </div>

                                    <div class="row clearfix">

                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <div class="field-label">First name <sup>*</sup></div>
                                           <asp:TextBox ID="Textname" type="text"  placeholder=""  runat="server"></asp:TextBox>
                                        </div>

                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <div class="field-label">Last name <sup>*</sup></div>
                                              <asp:TextBox ID="Textlastname"  type="text" placeholder="" runat="server"></asp:TextBox>
                                        </div>

                                        <!--Form Group-->


                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <div class="field-label">Email Address  <sup>*</sup></div>
                                   <asp:TextBox ID="Textemail" type="email" placeholder="" runat="server"></asp:TextBox>
                                        </div>

                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <div class="field-label">Phone <sup>*</sup></div>
                                            <asp:TextBox ID="Textphone"  type="text" placeholder="" runat="server"></asp:TextBox>
                                        </div>

                                        <!--Form Group-->
                                       
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <div class="field-label">State<sup>*</sup> </div>
                                             <asp:TextBox ID="Textstate" type="text" placeholder="" runat="server"></asp:TextBox>
                                        </div>
                                        <!--Form Group-->

                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <div class="field-label">City<sup>*</sup> </div>
                                           <asp:TextBox ID="Textcity" type="text" placeholder="" runat="server"></asp:TextBox>
                                        </div>
                                        <!--Form Group-->

                                         <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <div class="field-label">Address (Street Address)<sup>*</sup> </div>
                                            <asp:TextBox ID="TextAddress" placeholder="" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <div class="field-label">Zip / Postal Code </div>
                                             <asp:TextBox ID="TextZip" type="text"  placeholder=""  runat="server"></asp:TextBox>
                                        </div>
                                       <!--Form Group-->
                                         <%-- <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="field-label">Order Notes </div>
                                        <textarea placeholder="Notes about your order."></textarea>
                                    </div>--%>
                                    </div>
                                </div>
                           <%--     <button  class="theme-btn btn-style-two"></button>--%>
                                  <%--<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Place Order</button>--%>
                             <asp:Button ID="Button1"  class="btn btn-info btn-lg" type="button"  runat="server" OnClick="btnsubmit_click " Text="Place Order" />
                            </div>
                        </div>
                    </div>
                </div>
                <!--Basic Details-->
            </div>
        </section>
        
   
<%--<div class="container">
<h1 class="text-white bg-dark text-center"> Modals in Bootstrap 4 </h1>

<button class="btn btn-success" data-target="#mymodel" data-toggle="modal"> Open SignUp </button>

<div class="modal" id="mymodel">

<div class="modal-dialog">

<div class="modal-content">

<div class="modal-header">

<h3 class="text-center"> SigbUp </h3> </div>

</div>
    </div>
    </div>
    </div>--%>
</asp:Content>

