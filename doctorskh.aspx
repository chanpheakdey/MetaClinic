<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageKhmer.master" AutoEventWireup="false" CodeFile="doctorskh.aspx.vb" Inherits="doctors" %>

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
<h2 class="mb-4">វេជ្ជបណ្ឌិតជំនាញរបស់យើងខ្ញុំ</h2>
</div>
</div>
<div class="row">
<div class="col-md-6 col-lg-4 ftco-animate" style="height: 650px;">
<div class="staff" style="height: 650px;">
<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(images/doc-1.jpg);"></div>
</div>
<div class="text text-center">
<h3 class="mb-2">ចក្ខុបណ្ឌិត អ៊ុក សុលាបភី </h3>
<span class="position mb-2">ជំនាញឯកទេសភ្នែក ទារក-កុមារ និង​ ភ្នែកស្រលៀង</span>
<div class="faded" style="display:block;">
<ul class="ftco-social text-center" style="font-size:small;text-align: left !important;">
<li class="ftco-animate">• ជំនាញឯកទេសភ្នែក ទារក និងកុមារ បណ្តុះបណ្តាលដោយអូស្ត្រាលី </li>
<li class="ftco-animate">• បច្ចេកទេសវះកាត់ភ្នែក មុខរបួសតូច បណ្តុះបណ្តាលដោយអូស្ត្រាលី
  </li>
<li class="ftco-animate">• ឯកទេសទារក កុមារ និង​ ភ្នែកស្រលៀង ពីប្រទេសនេប៉ាល់
  </li>
<li class="ftco-animate">• បទពិសោធន៍ការងារជាង ១០ឆ្នាំ លើផ្នែកចក្ខុសាស្ត្រ និងឯកទេសជាន់ខ្ពស់ផ្នែកចក្ខុសាស្ត្រ
</li>
<li class="ftco-animate">• វេជ្ជបណ្ឌិតនៃសាកលវិទ្យាល័យវិទ្យាសាស្ត្រសុខាភិបាល
  </li>
<li class="ftco-animate">• គ្រូបណ្តុះបណ្តាលឯកទេសជាន់ខ្ពស់ភ្នែក ផ្នែកទារក និងកុមារ
  </li>
<li class="ftco-animate">• គ្រូបណ្តុះបណ្តាលនៅសាកលវិទ្យាល័យ
 </li>
<li class="ftco-animate">• បំរើការងារនៅមន្ទីរពេទ្យមិត្តភាពខ្មែរ-សូវៀត
  </li>
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
<h3 class="mb-2">ចក្ខុបណ្ឌិត លឹម ម៉ានី</h3>
<span class="position mb-2">ឯកទេសប្រព័ន្ធប្រាសាទភ្នែក</span>
<div class="faded" style="display:block;">
<ul class="ftco-social text-center" style="font-size:small;text-align: left !important;">
<li class="ftco-animate">• ឯកទេសប្រព័ន្ធប្រាសាទភ្នែក​​​ បណ្តុះបណ្តាលដោយអូស្ត្រាលី  </li>
<li class="ftco-animate">• បទពិសោធន៍ការងារផ្នែកចក្ខុសាស្ត្រទូទៅ និងឯកទេសជាន់ខ្ពស់ផ្នែកចក្ខុសាស្ត្ររយៈពេល ៦ឆ្នាំ  </li>
<li class="ftco-animate">• វេជ្ជបណ្ឌិតពីសាកលវិទ្យាល័យវិទ្យាសាស្ត្រសុខាភិបាល    </li>
<li class="ftco-animate">• បំរើការងារនៅមន្ទីរពេទ្យមិត្តភាពខ្មែរ-សូវៀត    </li>
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
<h3 class="mb-2">ចក្ខុបណ្ឌិត ឡេង សុធារក្ស</h3>
<span class="position mb-2">ចក្ខុបណ្ឌិតទូទៅ</span>
<div class="faded" style="display:block;">
<ul class="ftco-social text-center" style="font-size:small;text-align: left !important;">
<li class="ftco-animate">• ចក្ខុបណ្ឌិតទូទៅ  </li>
<li class="ftco-animate">• បទពិសោធន៍ការងារផ្នែកចក្ខុសាស្ត្ររយៈពេល ៤ឆ្នាំ </li>
<li class="ftco-animate">• វេជ្ជបណ្ឌិតពីសាកលវិទ្យាល័យវិទ្យាសាស្ត្រសុខាភិបាល     </li>
<li class="ftco-animate">• បំរើការងារនៅមន្ទីរពេទ្យមិត្តភាពខ្មែរ-សូវៀត   </li>
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
<h3 class="mb-2">លោក លឹម វ៉ាន់និត</h3>
<span class="position mb-2">ឯកទេសវាស់កាត់វ៉ែនតា  </span>
<div class="faded" style="display:block;">
<ul class="ftco-social text-center" style="font-size:small;text-align: left !important;">
<li class="ftco-animate">• ឯកទេសវាស់កាត់វ៉ែនតាពីកម្មវិធីជាតិសុខភាពផ្នែក ក្រសួងសុខាភិបាល  </li>
<li class="ftco-animate">• បរិញ្ញាប័ត្រគិលានុដ្ឋរពីវៀតណាម    </li>
<li class="ftco-animate">• បទពិសោធន៍ជាគិលានុបដ្ឋរឯកទេសវាស់កាត់វ៉ែនតាជិត ២០ឆ្នាំ</li>
<li class="ftco-animate">• បទពិសោធន៍ការងារជាមួយមន្ទីរពេទ្យប្រព័ន្ធប្រាសាទអន្តរជាតិ    </li>
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
<h3 class="mb-2">លោកស្រី ផាត់ សុគន្ធី  </h3>
<span class="position mb-2">ឯកទេសវាស់កាត់វ៉ែនតា   </span>
<div class="faded" style="display:block;">
<ul class="ftco-social text-center" style="font-size:small;text-align: left !important;">
<li class="ftco-animate">• ឯកទេសវាស់កាត់វ៉ែនតាពីកម្មវិធីជាតិសុខភាពភ្នែក ក្រសួងសុខាភិបាល  </li>
<li class="ftco-animate">• បរិញ្ញាប័ត្រគិលានុបដ្ឋរពីសាកលវិទ្យាល័យវិទ្យាសាស្ត្រសុខាភិបាល      </li>
<li class="ftco-animate">• បំរើការងារ នៅមន្ទីរពេទព្រះអង្គឌួង       </li>
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
<h3 class="mb-2">លោក ទឹម សំណាងដាវិត </h3>
<span class="position mb-2">គិលានុបដ្ឋាក      </span>
<div class="faded" style="display:block;">
<ul class="ftco-social text-center" style="font-size:small;text-align: left !important;">
<li class="ftco-animate">• បរិញ្ញាប័ត្រគិលានុបដ្ឋរពីសាកលវិទ្យាល័យវិទ្យាសាស្ត្រសុខាភិបាល   </li>
<li class="ftco-animate">• បទពិសោធន៍ការងារជាមួយគ្លីនិកឯកជន  </li>
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
</asp:Content>

