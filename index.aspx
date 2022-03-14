<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    
    </div>
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
<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-end" data-scrollax-parent="true" style="position: absolute;top: 200px;right: 20px;">
<div class="col-lg-12 ftco-animate">
<div class="mt-5">
<h1 class="mb-4">CARE YOUR VISION</h1>
<h1 class="mb-4">LOVE YOUR FUTURE</h1>
<div class="row">
<div class="col-md-7 col-lg-10">
<form action="#" class="appointment-form-intro ftco-animate">
<div class="d-flex">

<div class="form-group">
<input type="button" value="Book Appointment" class="btn-custom form-control py-3 px-4" onclick="popup_appointment()">
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
<section class="ftco-section ftco-no-pt ftco-no-pb ftco-services-2 bg-light">
<div class="container">
<div class="row d-flex">
<div class="col-md-7 py-5">
<div class="py-lg-5">
<div class="row justify-content-center pb-5">
<div class="col-md-12 heading-section ftco-animate">
<h2 class="mb-3">Welcome to <span>Koma Meta</span></h2>
</div>
</div>
<div class="row">
<div class="col-md-12 col-lg-12 align-self-stretch ftco-animate">
<div>
    Koma Meta is the first and leading pediatric eye clinic established in Cambodia.
We provide a wide range of eye health services for babies, infants, young children and adults.
Eye health services at Meta Children’s eye clinic includes eye health prevention, examination, treatment, surgery and rehabilitation.
We strongly adhere the profession, dignity, compassion and cooperation with professional partner.

</div>
<div style="margin-top:10px;">
    <div><span class="dot1">•</span><span class="dot-title">	Our vision:</span></div>
    <div class="dot2"><span>-</span>	To be the first children’s eye clinic that provides standardized services in Cambodia.</div>

</div>
<div>

    <div><span class="dot1">•</span><span class="dot-title">	Our mission:</span></div>
    <div class="dot2"><span>-</span>To provide eye consultation, treatment and surgery for infants, children and adults.</div>

</div>
<div>

      <div><span class="dot1">•</span><span class="dot-title">	Our values:</span></div>
    <div class="dot2"><span >-</span>	We adhere to professionalism and dignity</div>
    <div class="dot2"><span>-</span>	Give a smile, confidence in eye care and sight restoration </div>
    <div class="dot2"><span>-</span>	Give love and kindness.</div>

</div>
</div>
</div>
</div>
</div>
<div class="col-md-5 d-flex">
<div class="appointment-wrap p-4 p-lg-5 d-flex align-items-center">
<form action="#" class="appointment-form ftco-animate">
<h3>Appointment Form</h3>
<div class="">
<div class="form-group">
<input type="text" class="form-control" placeholder="First Name" id="txtfirstname">
</div>
<div class="form-group">
<input type="text" class="form-control" placeholder="Last Name" id="txtlastname">
</div>
</div>
<div class="">
<div class="form-group">
<div class="form-field">
<div class="select-wrap">
<div class="icon"><span class="fa fa-chevron-down"></span></div>
<select name="" id="dplservice" class="form-control">
<option value="">Select Your Services</option>
<option value="Provide glasses">Provide glasses</option>
<option value="Eye consultation">Eye consultation</option>
<option value="Eye investigation">Eye investigation</option>
<option value="Treatment & surgery">Treatment & surgery</option>
<option value="Other Services">Other Services</option>
</select>
</div>
</div>
</div>
<div class="form-group">
<input type="text" class="form-control" placeholder="Phone" id="txtphone">
</div>
</div>
<div class="">
<div class="form-group">
<div class="input-wrap">
<div class="icon"><span class="fa fa-calendar"></span></div>
<input type="text" class="form-control appointment_date" placeholder="Date" id="txtdate">
</div>
</div>
<div class="form-group">
<div class="input-wrap">
<div class="icon"><span class="fa fa-clock-o"></span></div>
<input type="text" class="form-control appointment_time" placeholder="Time" id="txttime">
</div>
</div>
</div>
<div class="">
<div class="form-group">
<textarea name="" id="txtmessage" cols="30" rows="2" class="form-control" placeholder="Message"></textarea>

</div>
<div class="form-group">
<input type="button" value="Appointment" class="btn btn-secondary py-3 px-4" onclick="make_appointment(false)">
</div>
</div>
</form>
</div>
</div>
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

<section class="ftco-section" style="display:none;">
<div class="container">
<div class="row justify-content-center mb-5 pb-2">
<div class="col-md-8 text-center heading-section ftco-animate">
<h2 class="mb-4"><span>Our services</span></h2>
</div>
</div>
<div class="row tabulation mt-4 ftco-animate">
<div class="col-md-3">
<ul class="nav nav-pills nav-fill d-block w-100">
<li class="nav-item text-left">
<a class="nav-link active d-flex align-items-centere py-4" data-toggle="tab" href="#services-1"><span><img src="images/logo-02.png" class="dot-logo" /></span> 
    <span>Provide glasses</span></a>
</li>
<li class="nav-item text-left">
<a class="nav-link py-4 d-flex align-items-center" data-toggle="tab" href="#services-2"><span><img src="images/logo-02.png" class="dot-logo" /></span> 
    <span>Eye consultation</span></a>
</li>
<li class="nav-item text-left">
<a class="nav-link py-4 d-flex align-items-center" data-toggle="tab" href="#services-3"><span><img src="images/logo-02.png" class="dot-logo" /></span>
    <span>Eye investigation</span></a>
</li>
<li class="nav-item text-left">
<a class="nav-link py-4 d-flex align-items-center" data-toggle="tab" href="#services-4"><span><img src="images/logo-02.png" class="dot-logo" /></span> 
    <span>Treatment & surgery</span></a>
</li>
</ul>
</div>
<div class="col-md-9">
<div class="tab-content pt-4 pt-md-0 pl-md-3">
<div class="tab-pane container p-0 active" id="services-1">
<div class="row">
<div class="col-md-5 img" style="background-image: url(images/dept-1.jpg);"></div>
<div class="col-md-7 text pl-md-4">
<h3><a href="#">Provide glasses</a></h3>
<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>
<ul>
<li><span class="fa fa-check"></span>The Big Oxmox advised her not to do so</li>
<li><span class="fa fa-check"></span>Far far away, behind the word mountains</li>
<li><span class="fa fa-check"></span>Separated they live in Bookmarksgrove</li>
<li><span class="fa fa-check"></span>She packed her seven versalia</li>
</ul>
</div>
</div>
</div>
<div class="tab-pane container p-0 fade" id="services-2">
<div class="row">
<div class="col-md-5 img" style="background-image: url(images/dept-2.jpg);"></div>
<div class="col-md-7 text pl-md-4">
<h3><a href="#">Eye consultation</a></h3>
<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>
<ul>
<li><span class="fa fa-check"></span>The Big Oxmox advised her not to do so</li>
<li><span class="fa fa-check"></span>Far far away, behind the word mountains</li>
<li><span class="fa fa-check"></span>Separated they live in Bookmarksgrove</li>
<li><span class="fa fa-check"></span>She packed her seven versalia</li>
</ul>
</div>
</div>
</div>
<div class="tab-pane container p-0 fade" id="services-3">
<div class="row">
<div class="col-md-5 img" style="background-image: url(images/dept-3.jpg);"></div>
<div class="col-md-7 text pl-md-4">
<h3><a href="#">Eye investigation</a></h3>
<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>
<ul>
<li><span class="fa fa-check"></span>The Big Oxmox advised her not to do so</li>
<li><span class="fa fa-check"></span>Far far away, behind the word mountains</li>
<li><span class="fa fa-check"></span>Separated they live in Bookmarksgrove</li>
<li><span class="fa fa-check"></span>She packed her seven versalia</li>
</ul>
</div>
</div>
</div>
<div class="tab-pane container p-0 fade" id="services-4">
<div class="row">
<div class="col-md-5 img" style="background-image: url(images/dept-4.jpg);"></div>
<div class="col-md-7 text pl-md-4">
<h3><a href="#">Treatment & surgery</a></h3>
<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>
<ul>
<li><span class="fa fa-check"></span>The Big Oxmox advised her not to do so</li>
<li><span class="fa fa-check"></span>Far far away, behind the word mountains</li>
<li><span class="fa fa-check"></span>Separated they live in Bookmarksgrove</li>
<li><span class="fa fa-check"></span>She packed her seven versalia</li>
</ul>
</div>
</div>
</div>
<div class="tab-pane container p-0 fade" id="services-5">
<div class="row">
<div class="col-md-5 img" style="background-image: url(images/dept-5.jpg);"></div>
<div class="col-md-7 text pl-md-4">
<h3><a href="#">Surgical</a></h3>
<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>
<ul>
<li><span class="fa fa-check"></span>The Big Oxmox advised her not to do so</li>
<li><span class="fa fa-check"></span>Far far away, behind the word mountains</li>
<li><span class="fa fa-check"></span>Separated they live in Bookmarksgrove</li>
<li><span class="fa fa-check"></span>She packed her seven versalia</li>
</ul>
</div>
</div>
</div>
<div class="tab-pane container p-0 fade" id="services-6">
<div class="row">
<div class="col-md-5 img" style="background-image: url(images/dept-6.jpg);"></div>
<div class="col-md-7 text pl-md-4">
<h3><a href="#">Cardiology</a></h3>
<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>
<ul>
<li><span class="fa fa-check"></span>The Big Oxmox advised her not to do so</li>
<li><span class="fa fa-check"></span>Far far away, behind the word mountains</li>
<li><span class="fa fa-check"></span>Separated they live in Bookmarksgrove</li>
<li><span class="fa fa-check"></span>She packed her seven versalia</li>
</ul>
</div>
</div>
</div>
<div class="tab-pane container p-0 fade" id="services-7">
<div class="row">
<div class="col-md-5 img" style="background-image: url(images/dept-7.jpg);"></div>
<div class="col-md-7 text pl-md-4">
<h3><a href="#">Dental Clinic</a></h3>
<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>
<ul>
<li><span class="fa fa-check"></span>The Big Oxmox advised her not to do so</li>
<li><span class="fa fa-check"></span>Far far away, behind the word mountains</li>
<li><span class="fa fa-check"></span>Separated they live in Bookmarksgrove</li>
<li><span class="fa fa-check"></span>She packed her seven versalia</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
<section class="ftco-section bg-light">
<div class="container-fluid px-5">
<div class="row justify-content-center mb-5 pb-2">
<div class="col-md-8 text-center heading-section ftco-animate">
<h2 class="mb-4">Our Qualified Doctors</h2>
</div>
</div>
<div class="row">
<div class="col-md-6 col-lg-4 ftco-animate" style="height: 350px;">
<div class="staff" style="height: 350px;">
<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(images/doc-1.jpg);"></div>
</div>
<div class="text text-center">
<h3 class="mb-2">Dr. OUK SOLEAPHY</h3>
<span class="position mb-2">PEDIATRIC OPHTHALMOLOGIST and STRABISMUS</span>
<div class="faded" style="display:none;">
<p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
<ul class="ftco-social text-center">
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-google"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-6 col-lg-4 ftco-animate" style="height: 350px;">
<div class="staff" style="height: 350px;">
<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(images/doc-2.jpg);"></div>
</div>
<div class="text text-center">
<h3 class="mb-2">Dr. LIM MANY</h3>
<span class="position mb-2">NEURO- OPHTHALMOLOGIST </span>
<div class="faded" style="display:none;">
<p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
<ul class="ftco-social text-center">
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-google"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-6 col-lg-4 ftco-animate" style="height: 350px;">
<div class="staff" style="height: 350px;">
<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(images/doc-3.jpg);"></div>
</div>
<div class="text text-center">
<h3 class="mb-2">Dr. LENG SOTHEAREAK</h3>
<span class="position mb-2">OPHTHALMOLOGIST</span>
<div class="faded" style="display:none;">
<p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
<ul class="ftco-social text-center">
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-google"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a></li>
</ul>
</div>
</div>
</div>
</div>

<div class="col-md-6 col-lg-4 ftco-animate" style="height: 350px;">
<div class="staff" style="height: 350px;">
<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(images/doc-4.jpg);"></div>
</div>
<div class="text text-center">
<h3 class="mb-2">Mr. Lim Vannith</h3>
<span class="position mb-2">REFRACTIONIST NURSE  </span>
<div class="faded" style="display:none;">
<p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
<ul class="ftco-social text-center">
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-google"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a></li>
</ul>
</div>
</div>
</div>
</div>
    <div class="col-md-6 col-lg-4 ftco-animate" style="height: 350px;">
<div class="staff" style="height: 350px;">
<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(images/doc-5.jpg);"></div>
</div>
<div class="text text-center">
<h3 class="mb-2">Mrs PHAT SOKUNTHY </h3>
<span class="position mb-2">REFRACTIONIST NURSE     </span>
<div class="faded" style="display:none;">
<p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
<ul class="ftco-social text-center">
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-google"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a></li>
</ul>
</div>
</div>
</div>
</div>
    <div class="col-md-6 col-lg-4 ftco-animate" style="height: 350px;">
<div class="staff" style="height: 350px;">
<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(images/doc-7.jpg);"></div>
</div>
<div class="text text-center">
<h3 class="mb-2">Mr. TIM SAMNANG DAVID </h3>
<span class="position mb-2">GENERAL NURSE    </span>
<div class="faded" style="display:none;">
<p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
<ul class="ftco-social text-center">
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-google"></span></a></li>
<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a></li>
</ul>
</div>
</div>
</div>
</div>
    </div>
</section>

<section class="ftco-section bg-light" style="display:none;">
<div class="container-fluid px-md-5">
<div class="row justify-content-center mb-5 pb-5">
<div class="col-md-10 heading-section text-center ftco-animate">
<h2 class="mb-4">Latest Blog Updates</h2>
<p>Your sight and smile are our happiness</p>
</div>
</div>
<div class="row d-flex">
<div class="col-lg-4 ftco-animate">
<div class="blog-entry">
<a href="blog-single.aspx" class="block-20" style="background-image: url('images/image_1.jpg');">
</a>
<div class="d-flex">
<div class="meta pt-3 text-right pr-2">
<div><a href="#"><span class="fa fa-calendar mr-2"></span>Aug. 12, 2020</a></div>
<div><a href="#"><span class="fa fa-user mr-2"></span>Admin</a></div>
<div><a href="#" class="meta-chat"><span class="fa fa-comment mr-2"></span> 3</a></div>
</div>
<div class="text d-block">
<h3 class="heading"><a href="#">Scary Thing That You Don’t Get Enough Sleep</a></h3>
<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia...</p>
<p><a href="blog.aspx" class="btn btn-secondary btn-outline-secondary py-2 px-3">Read more</a></p>
</div>
</div>
</div>
</div>
<div class="col-lg-4 ftco-animate">
<div class="blog-entry">
<a href="blog-single.aspx" class="block-20" style="background-image: url('images/image_2.jpg');">
</a>
<div class="d-flex">
<div class="meta pt-3 text-right pr-2">
<div><a href="#"><span class="fa fa-calendar mr-2"></span>Aug. 12, 2020</a></div>
<div><a href="#"><span class="fa fa-user mr-2"></span>Admin</a></div>
<div><a href="#" class="meta-chat"><span class="fa fa-comment mr-2"></span> 3</a></div>
</div>
<div class="text d-block">
<h3 class="heading"><a href="#">Scary Thing That You Don’t Get Enough Sleep</a></h3>
<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia...</p>
<p><a href="blog.aspx" class="btn btn-secondary btn-outline-secondary py-2 px-3">Read more</a></p>
</div>
</div>
</div>
</div>
<div class="col-lg-4 ftco-animate">
<div class="blog-entry">
<a href="blog-single.aspx" class="block-20" style="background-image: url('images/image_3.jpg');">
</a>
<div class="d-flex">
<div class="meta pt-3 text-right pr-2">
<div><a href="#"><span class="fa fa-calendar mr-2"></span>Aug. 12, 2020</a></div>
<div><a href="#"><span class="fa fa-user mr-2"></span>Admin</a></div>
<div><a href="#" class="meta-chat"><span class="fa fa-comment mr-2"></span> 3</a></div>
</div>
<div class="text d-block">
<h3 class="heading"><a href="#">Scary Thing That You Don’t Get Enough Sleep</a></h3>
<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia...</p>
<p><a href="blog.aspx" class="btn btn-secondary btn-outline-secondary py-2 px-3">Read more</a></p>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
<section class="ftco-section testimony-section img" style="background-image: url(images/bg_4.jpg);display:none;">
<div class="overlay"></div>
<div class="container">
<div class="row justify-content-center pb-3">
<div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
<span class="subheading">Read testimonials</span>
<h2 class="mb-4">Our Patient Says</h2>
</div>
</div>
<div class="row ftco-animate justify-content-center">
<div class="col-md-12">
<div class="carousel-testimony owl-carousel ftco-owl">
<div class="item">
<div class="testimony-wrap py-4 pb-5 d-flex justify-content-between">
<div class="user-img" style="background-image: url(images/person_1.jpg)">
<span class="quote d-flex align-items-center justify-content-center">
<i class="fa fa-quote-left"></i>
</span>
</div>
<div class="text">
<p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia</p>
<p class="name">Jeff Freshman</p>
<span class="position">Patients</span>
</div>
</div>
</div>
<div class="item">
<div class="testimony-wrap py-4 pb-5 d-flex justify-content-between">
<div class="user-img" style="background-image: url(images/person_2.jpg)">
<span class="quote d-flex align-items-center justify-content-center">
<i class="fa fa-quote-left"></i>
</span>
</div>
<div class="text">
<p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia</p>
<p class="name">Jeff Freshman</p>
<span class="position">Patients</span>
</div>
</div>
</div>
<div class="item">
<div class="testimony-wrap py-4 pb-5 d-flex justify-content-between">
<div class="user-img" style="background-image: url(images/person_3.jpg)">
<span class="quote d-flex align-items-center justify-content-center">
<i class="fa fa-quote-left"></i>
</span>
</div>
<div class="text">
<p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia</p>
<p class="name">Jeff Freshman</p>
<span class="position">Patients</span>
</div>
</div>
</div>
<div class="item">
<div class="testimony-wrap py-4 pb-5 d-flex justify-content-between">
<div class="user-img" style="background-image: url(images/person_1.jpg)">
<span class="quote d-flex align-items-center justify-content-center">
<i class="fa fa-quote-left"></i>
</span>
</div>
<div class="text">
<p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia</p>
<p class="name">Jeff Freshman</p>
<span class="position">Patients</span>
</div>
</div>
</div>
<div class="item">
<div class="testimony-wrap py-4 pb-5 d-flex justify-content-between">
<div class="user-img" style="background-image: url(images/person_3.jpg)">
<span class="quote d-flex align-items-center justify-content-center">
<i class="fa fa-quote-left"></i>
</span>
</div>
<div class="text">
<p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia</p>
<p class="name">Jeff Freshman</p>
<span class="position">Patients</span>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
</asp:Content>

