<%@ Page Title="" Language="VB" AutoEventWireup="false" CodeFile="bookappointment.aspx.vb" Inherits="_Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Meta Eye Clinic</title>
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" href="font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">
<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/style.css?v=3">
    <script src="js/clinic.js?v=11"></script>
    
</head>
<body>
    
    <div id="div_loadding_popup" style="position:fixed;z-index:9999;margin:auto;width:100%;">
            
            
        </div>
    
    <div  id="div_appoinment_form_popup">
<section class="ftco-section ftco-no-pt ftco-no-pb ftco-services-2 bg-light" >
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
<input type="button" value="Appointment" class="btn btn-secondary py-3 px-4" onclick="make_appointment(true)">
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</section>
        </div>
    <script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.timepicker.min.js"></script>
<script src="js/scrollax.min.js"></script>

<script src="js/google-map.js"></script>
<script src="js/main.js"></script>
</body>
</html>



