<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="doctors.aspx.vb" Inherits="doctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        function show_profile(e) {
            var div_detail = $(e).find('.faded');
            $(div_detail).show();
        }
      

    </script>
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
<section class="ftco-section bg-light">
<div class="container-fluid px-5">
<div class="row justify-content-center mb-5 pb-2">
<div class="col-md-8 text-center heading-section ftco-animate">
<h2 class="mb-4">Our Qualified Doctors</h2>
</div>
</div>
<div class="row">
<div class="col-md-6 col-lg-4 ftco-animate" style="height: 650px;">
<div class="staff" style="height: 650px;">
<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(images/doc-1.jpg);"></div>
</div>
<div class="text text-center">
<h3 class="mb-2">Dr. OUK SOLEAPHY</h3>
<span class="position mb-2">PEDIATRIC OPHTHALMOLOGIST and STRABISMUS</span>
<div class="faded" style="display:block;">
<ul class="ftco-social text-center" style="font-size:small;text-align: left !important;">
<li class="ftco-animate">• Pediatric Ophthalmologist, Sight For All- Australia </li>
<li class="ftco-animate">• Small Incision Cataract Surgery (SICS), Fred Hollows Foundation-Australia  </li>
<li class="ftco-animate">• Pediatric and Squint Surgery - Nepal  </li>
<li class="ftco-animate">• 10 years experiences in general ophthalmology and sub-specialized clinic in ophthalmology </li>
<li class="ftco-animate">• Medical Doctor, University of Health Sciences  </li>
<li class="ftco-animate">• Mentor in pediatric ophthalmology  </li>
<li class="ftco-animate">• Lecturer at medical university </li>
<li class="ftco-animate">• Working at Khmer-Soviet Friendship Hospital  </li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-6 col-lg-4 ftco-animate" style="height: 650px;">
<div class="staff" style="height: 650px;">
<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(images/doc-2.jpg);"></div>
</div>
<div class="text text-center">
<h3 class="mb-2">Dr. LIM MANY</h3>
<span class="position mb-2">NEURO- OPHTHALMOLOGIST </span>
<div class="faded" style="display:block;">
<ul class="ftco-social text-center" style="font-size:small;text-align: left !important;">
<li class="ftco-animate">• Neuro-Ophthalmologist, Sight For All- Australia  </li>
<li class="ftco-animate">• 6 years experiences in general ophthalmology and sub-specialized clinic in ophthalmology  </li>
<li class="ftco-animate">• Medical Doctor, University of Health Sciences    </li>
<li class="ftco-animate">• Working at Khmer-Soviet Friendship Hospital    </li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-6 col-lg-4 ftco-animate" style="height: 650px;">
<div class="staff" style="height: 650px;">
<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(images/doc-3.jpg);"></div>
</div>
<div class="text text-center">
<h3 class="mb-2">Dr. LENG SOTHEAREAK</h3>
<span class="position mb-2">OPHTHALMOLOGIST</span>
<div class="faded" style="display:block;">
<ul class="ftco-social text-center" style="font-size:small;text-align: left !important;">
<li class="ftco-animate">• Ophthalmologist,  University of Health Sciences (UHS)  </li>
<li class="ftco-animate">• 4 year experiences in general ophthalmology </li>
<li class="ftco-animate">• Medical Doctor, University of Health Sciences     </li>
<li class="ftco-animate">• Working at Khmer-Soviet Friendship Hospital   </li>
</ul>
</div>
</div>
</div>
</div>

<div class="col-md-6 col-lg-4 ftco-animate" style="height: 650px;">
<div class="staff" style="height: 650px;">
<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(images/doc-4.jpg);"></div>
</div>
<div class="text text-center">
<h3 class="mb-2">Mr. Lim Vannith</h3>
<span class="position mb-2">REFRACTIONIST NURSE  </span>
<div class="faded" style="display:block;">
<ul class="ftco-social text-center" style="font-size:small;text-align: left !important;">
<li class="ftco-animate">• Refractionist Nurse- NPEH/MoH  </li>
<li class="ftco-animate">• Bachelor of Nursing- Vietnam    </li>
<li class="ftco-animate">• 20 years working experience in nursing, refraction and dispensing glasses    </li>
<li class="ftco-animate">• Work at International Neurosurgery Hospital    </li>
</ul>
</div>
</div>
</div>
</div>
    <div class="col-md-6 col-lg-4 ftco-animate" style="height: 650px;">
<div class="staff" style="height: 650px;">
<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(images/doc-5.jpg?v=2);"></div>
</div>
<div class="text text-center">
<h3 class="mb-2">Mrs PHAT SOKUNTHY </h3>
<span class="position mb-2">REFRACTIONIST NURSE   </span>
<div class="faded" style="display:block;">
<ul class="ftco-social text-center" style="font-size:small;text-align: left !important;">
<li class="ftco-animate">• Refractionist Nurse-NPEH/MoH  </li>
<li class="ftco-animate">• Bachelor of Nursing, University of Health Sciences      </li>
<li class="ftco-animate">• Work at Preah Ang Doung Hospital       </li>
</ul>
</div>
</div>
</div>
</div>
    
    <div class="col-md-6 col-lg-4 ftco-animate" style="height: 650px;">
<div class="staff" style="height: 650px;">
<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(images/doc-7.jpg);"></div>
</div>
<div class="text text-center">
<h3 class="mb-2">MR TIM SAMNANG DAVID  </h3>
<span class="position mb-2">GENERAL NURSE      </span>
<div class="faded" style="display:block;">
<ul class="ftco-social text-center" style="font-size:small;text-align: left !important;">
<li class="ftco-animate">• Bachelor of Nursing, University of Health Sciences   </li>
<li class="ftco-animate">• Working experiences with private clinics  </li>
</ul>
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
</asp:Content>

