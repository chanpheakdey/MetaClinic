<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="hero-wrap js-fullheight" data-stellar-background-ratio="0.5" style="height:auto !important;">
    
<div class="">
    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="max-height:500px;">
    <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active" style="border: solid 2px #cb1580;"></li>
              <li data-target="#myCarousel" data-slide-to="1" style="border: solid 2px #cb1580;"></li>
               <li data-target="#myCarousel" data-slide-to="2" style="border: solid 2px #cb1580;"></li>
            </ol>

    <!-- Wrapper for slides -->
            <div class="carousel-inner">

              <div class="item active">
                <img src="images/Banner/001.jpg" alt="" style="width:100%;">
                <div class="carousel-caption">
                  <h3></h3>
                  <p></p>
                </div>
              </div>

              <div class="item">
                 <img src="images/Banner/002.jpg" alt="" style="width:100%;">
                <div class="carousel-caption">
                  <h3></h3>
                  <p></p>
                </div>
              </div>
              <div class="item">
                <img src="images/Banner/003.jpg" alt="" style="width:100%;">
                <div class="carousel-caption">
                  <h3></h3>
                  <p></p>
                </div>
              </div>

    
  
            </div>

    <!-- Left and right controls -->
                   <%--  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>--%>
  </div>

</div>
</section>
<section class="ftco-section contact-section">
<div class="container">
<div class="row d-flex contact-info mb-5">
<div class="col-md-6 col-lg-3 d-flex ftco-animate">
<div class="align-self-stretch box p-4 text-center bg-light">
<div class="icon d-flex align-items-center justify-content-center">
<span class="flaticon-flag"></span>
</div>
<h3 class="mb-4">Address</h3>
<p>No. 37&39, Street: 1966, Sangkat Phnom Penh Thmey, Khan Sensok, Phnom Penh</p>
</div>
</div>
<div class="col-md-6 col-lg-3 d-flex ftco-animate">
<div class="align-self-stretch box p-4 text-center bg-light">
<div class="icon d-flex align-items-center justify-content-center">
<span class="flaticon-phone-call"></span>
</div>
<h3 class="mb-4">Contact Number</h3>
<p><a href="tel://1234567920">012 711 729 / 010 711 729</a></p>
</div>
</div>
<div class="col-md-6 col-lg-3 d-flex ftco-animate">
<div class="align-self-stretch box p-4 text-center bg-light">
<div class="icon d-flex align-items-center justify-content-center">
<span class="flaticon-paper-plane"></span>
</div>
<h3 class="mb-4">Email Address</h3>
<p><a href=""><span class="__cf_email__" data-cfemail="e68f888089a69f899394958f9283c885898b">info@metaeyeclinic.com</span></a></p>
</div>
</div>
<div class="col-md-6 col-lg-3 d-flex ftco-animate">
<div class="align-self-stretch box p-4 text-center bg-light">
<div class="icon d-flex align-items-center justify-content-center">
<span class="flaticon-world-wide-web-on-grid"></span>
</div>
<h3 class="mb-4">Website</h3>
<p><a href="#">metaeyeclinic.com</a></p>
</div>
</div>
</div>
<div class="row no-gutters block-9">
<div class="col-md-12 d-flex">
<div id="map" class="bg-white">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3908.593905587234!2d104.88342431480807!3d11.580942591778689!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x310951ab656a8ed3%3A0x9b7e8b4b23542dac!2sMeta%20Children&#39;s%20Eye%20Clinic!5e0!3m2!1sen!2skh!4v1612657187264!5m2!1sen!2skh" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
</div>
</div>
</div>
</div>
</section>
</asp:Content>

