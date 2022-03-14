<%@ Page Title="" Language="VB" AutoEventWireup="false" CodeFile="bookappointmentkh.aspx.vb" Inherits="_Default" %>
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
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Koh+Santepheap:wght@300&display=swap" rel="stylesheet">

    <style>
        body{
            font-family: 'Koh Santepheap', cursive;
        }
    </style>
</head>
<body>
    
    <div id="div_loadding_popup" style="position:fixed;z-index:9999;margin:auto;width:100%;">
            
            
        </div>
    
    <section class="ftco-section ftco-no-pt ftco-no-pb ftco-services-2 bg-light">
<div class="container">
<div class="row d-flex">
<div class="col-md-7 py-5">
<div class="py-lg-5">
<div class="row justify-content-center pb-5">
<div class="col-md-12 heading-section ftco-animate">
<h2 class="mb-3">Koma Meta សូមស្វាគមន៌</h2>
</div>
</div>
<div class="row">
<div class="col-md-12 col-lg-12 align-self-stretch ftco-animate">
<div>
    Koma Meta គឺជាគ្លីនិកភ្នែកកុមារដំបូងគេ និងឈានមុខគេ ក្នុងប្រទេសកម្ពុជា។ យើងផ្តល់សេវាសុខភាពភ្នែកយ៉ាងទូលំទូលាយសម្រាប់ទារក ទារក កុមារតូច និងមនុស្សពេញវ័យ។ សេវាសុខភាពភ្នែកនៅគ្លីនិកភ្នែក Meta រួមមានការការពារសុខភាពភ្នែក ការពិនិត្យ ការព្យាបាល ការវះកាត់ និងការស្តារនីតិសម្បទា។ យើងប្រកាន់ខ្ជាប់យ៉ាងខ្ជាប់ខ្ជួននូវវិជ្ជាជីវៈ សេចក្តីថ្លៃថ្នូរ ក្តីមេត្តា និងកិច្ចសហប្រតិបត្តិការជាមួយដៃគូវិជ្ជាជីវៈ។

</div>
<div style="margin-top:10px;">
    <div><span class="dot1">•</span><span class="dot-title">ទស្សនវិស័យ​របស់​យើងខ្ញុំៈ</span></div>
    <div class="dot2"><span>-</span>	ដើម្បី​ជា​គ្លីនិក​ភ្នែក​កុមារ​ដំបូង​គេ​ដែល​ផ្តល់​សេវា​តាម​ស្តង់ដារ​នៅ​កម្ពុជា។</div>

</div>
<div>

    <div><span class="dot1">•</span><span class="dot-title">គោលដៅរបស់យើងខ្ញុំៈ</span></div>
    <div class="dot2"><span>-</span>ដើម្បីផ្តល់ការពិគ្រោះជំងឺភ្នែក ការព្យាបាល និងការវះកាត់សម្រាប់ទារក កុមារ និងមនុស្សពេញវ័យ។</div>

</div>
<div>

      <div><span class="dot1">•</span><span class="dot-title">	គុណតម្លៃរបស់យើងខ្ញុំៈ</span></div>
    <div class="dot2"><span >-</span>	យើងប្រកាន់ខ្ជាប់នូវវិជ្ជាជីវៈ និងសេចក្តីថ្លៃថ្នូរ</div>
    <div class="dot2"><span>-</span>	ផ្តល់ស្នាមញញឹម ទំនុកចិត្តក្នុងការថែរក្សាភ្នែក និងការស្តារការមើលឃើញឡើងវិញ </div>
    <div class="dot2"><span>-</span>	ផ្តល់សេចក្តីស្រឡាញ់និងសេចក្តីសប្បុរស។</div>

</div>
</div>
</div>
</div>
</div>
<div class="col-md-5 d-flex">
<div class="appointment-wrap p-4 p-lg-5 d-flex align-items-center">
<form action="#" class="appointment-form ftco-animate">
<h3>ពាក្យសុំណាត់ជួប</h3>
<div class="">
<div class="form-group">
<input type="text" class="form-control" placeholder="ឈ្មោះ" id="txtfirstname">
</div>
<div class="form-group">
<input type="text" class="form-control" placeholder="ត្រកូល" id="txtlastname">
</div>
</div>
<div class="">
<div class="form-group">
<div class="form-field">
<div class="select-wrap">
<div class="icon"><span class="fa fa-chevron-down"></span></div>
<select name="" id="dplservice" class="form-control">
<option value="">ជ្រើសរើសសេវាកម្ម</option>
<option value="Provide glasses">វែនតា</option>
<option value="Eye consultation">ការពិគ្រោះជំងឺភ្នែក</option>
<option value="Eye investigation">ការតាមដានសុខភាពភ្នែក</option>
<option value="Treatment & surgery">ការព្យាបាល និងការវះកាត់</option>
<option value="Other Services">សេវាកម្មផ្សេងទៀត</option>
</select>
</div>
</div>
</div>
<div class="form-group">
<input type="text" class="form-control" placeholder="លេខទូរស័ព្ទ" id="txtphone">
</div>
</div>
<div class="">
<div class="form-group">
<div class="input-wrap">
<div class="icon"><span class="fa fa-calendar"></span></div>
<input type="text" class="form-control appointment_date" placeholder="ថ្ងៃណាត់ជួប" id="txtdate">
</div>
</div>
<div class="form-group">
<div class="input-wrap">
<div class="icon"><span class="fa fa-clock-o"></span></div>
<input type="text" class="form-control appointment_time" placeholder="ម៉ោងណាត់ជួប" id="txttime">
</div>
</div>
</div>
<div class="">
<div class="form-group">
<textarea name="" id="txtmessage" cols="30" rows="2" class="form-control" placeholder="មតិយោបល់"></textarea>

</div>
<div class="form-group">
<input type="button" value="សុំណាត់ជួប" class="btn btn-secondary py-3 px-4" onclick="make_appointment(false)">
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</section>
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



