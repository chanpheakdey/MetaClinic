$(document).ready(function () {
    console.log("page load");
    loadslide();
});


function loadslide() {
    $.ajax({
        cache: false,
        async: false,
        type: "Post",
        dataType: "Json",
        contentType: "application/json; charset=utf-8",
        url: "clinicservice.asmx/GetPhotoList",
        data: '',
        complete: function () {

        },
        success: function (data) {
            var datalength = data.d.length;
            var html_indicator = '';
            var html_item = '';

            var html = '';
            for (var i = 0; i < datalength; i++) {
                if (i == 0) {
                    html_indicator += '<li data-target="#myCarousel" data-slide-to="' + i + '" class="active" style="border: solid 2px #cb1580;"></li>';
                } else {
                    html_indicator += '<li data-target="#myCarousel" data-slide-to="' + i + '" style="border: solid 2px #cb1580;"></li>';
                }
                var id = data.d[i].ID;
                var filename = data.d[i].PhotoUrl;
                var index = data.d[i].PhotoIndex;
                var createddate = data.d[i].CreatedDate;

                if (i == 0) {
                    html_item += `<div class="item active">
                    <img class="img-mobile" src="` + filename + `" alt="" style="width:100%;">
                    <img class="img-pc" src="hdimageurl.ashx?PhotoUrl=` + filename + `&width=3000&height=1000" alt="" style="width:100%;">
                        <div class="carousel-caption">
                        <h3></h3>
                        <p></p>
                        </div>
                    </div>`
                } else {
                    html_item += `<div class="item">
                    <img class="img-mobile" src="` + filename + `" alt="" style="width:100%;">
                    <img class="img-pc" src="hdimageurl.ashx?PhotoUrl=` + filename + `&width=3000&height=1000" alt="" style="width:100%;">
                        <div class="carousel-caption">
                        <h3></h3>
                        <p></p>
                        </div>
                    </div>`

                }
               

            }
            $("#indicator").html(html_indicator);
            $("#divitem").html(html_item);
        },
        error: function (result) {
            console.log(result);
        }
    });
}