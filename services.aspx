<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="services.aspx.vb" Inherits="services" %>

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
                <li data-target="#myCarousel" data-slide-to="3" style="border: solid 2px #cb1580;"></li>
                <li data-target="#myCarousel" data-slide-to="4" style="border: solid 2px #cb1580;"></li>
               
            </ol>

    <!-- Wrapper for slides -->
            <div class="carousel-inner">
            <div class="item active">
                <img class="img-mobile" src="images/Banner/promotion1.jpg" alt="" style="width:100%;">
                  <img class="img-pc" src="hdimageurl.ashx?PhotoUrl=images/Banner/promotion1.jpg&width=3000&height=1000" alt="" style="width:100%;">
                <div class="carousel-caption">
                  <h3></h3>
                  <p></p>
                </div>
              </div>
              <div class="item">
                <img class="img-mobile" src="images/Banner/promotion2.jpg" alt="" style="width:100%;">
                  <img class="img-pc" src="hdimageurl.ashx?PhotoUrl=images/Banner/promotion2.jpg&width=3000&height=1000" alt="" style="width:100%;">
                <div class="carousel-caption">
                  <h3></h3>
                  <p></p>
                </div>
              </div>
                
              <div class="item">
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
<section class="ftco-section bg-light">
<div class="container-fluid px-5">
<div class="row justify-content-center mb-5 pb-2">
<div class="col-md-8 text-center heading-section ftco-animate">
<h2 class="mb-4">Our Services</h2>
</div>
</div>
<div class="row">
<div class="col-md-6 col-lg-4 ftco-animate">
<div class="staff" >
<div class="text text-center" style="height: 200px;">
<h3 class="mb-2">New born eye check up</h3>
<span class="position mb-2"></span>

</div>
</div>
</div>
<div class="col-md-6 col-lg-4 ftco-animate">
<div class="staff" >
<div class="text text-center" style="height: 200px;">
<h3 class="mb-2">Annual eye checkup and pre-school eye screening </h3>
<span class="position mb-2"></span>

</div>
</div>
</div>
<div class="col-md-6 col-lg-4 ftco-animate">
<div class="staff" >
<div class="text text-center" style="height: 200px;">
<h3 class="mb-2">Eyes consultation</h3>
<span class="position mb-2"></span>

</div>
</div>
</div>
<div class="col-md-6 col-lg-4 ftco-animate">
<div class="staff" >
<div class="text text-center" style="height: 200px;">
<h3 class="mb-2">Eyes treatment and surgery</h3>
<span class="position mb-2"></span>

</div>
</div>
</div>
<div class="col-md-6 col-lg-4 ftco-animate">
<div class="staff" >
<div class="text text-center" style="height: 200px;">
<h3 class="mb-2">Refraction and Glasses</h3>
<span class="position mb-2"></span>

</div>
</div>
</div>

</div>
</div>
</section>
</asp:Content>

