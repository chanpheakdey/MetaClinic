function removefile(id) {
    $.ajax({
        cache: false,
        async: false,
        type: "Post",
        dataType: "Json",
        contentType: "application/json; charset=utf-8",
        url: "clinicservice.asmx/RemovePhoto",
        data: '{ID:' + id + '}',
        complete: function () {

        },
        success: function (data) {
            getphotolist();
        },
        error: function (result) {
            console.log(result);
        }
    });

}
function getphotolist() {
    
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
            var html = '';
            html += '<table>';
            html += '<tr><td>FileName</td><td>Index</td><td>CreatedDate</td><td></td></tr>';
            for (var i = 0; i < datalength; i++) {
                var id = data.d[i].ID;
                var filename = data.d[i].PhotoUrl;
                var index = data.d[i].PhotoIndex;
                var createddate = data.d[i].CreatedDate;
                html += '<tr><td><img src="' + filename + '" style="height:30px;" /></td><td>' + index + '</td><td>' + createddate + '</td>';
                html += '<td><input type="button" value="Remove" onclick="removefile(' + id + ')" /></td>';
                html += '</tr>';

            }
            html += '</table>';
            $("#div_list").html(html);
        },
        error: function (result) {
            console.log(result);
        }
    });
}
function change_menu(menuname) {
    $.ajax({
        cache: false,
        async: false,
        type: "POST",
        dataType: "Json",
        contentType: "application/json; charset=utf-8",
        url: "clinicservice.asmx/ChangeMenu",
        data: '{Menu:"' + menuname + '"}',
        complete: function () {

        },
        success: function (data) {
            window.location = data.d;

        },
        error: function (result) {
            console.log(result);
        }
    });
}
function changelanguage() {
    
    $.ajax({
        cache: false,
        async: false,
        type: "POST",
        dataType: "Json",
        contentType: "application/json; charset=utf-8",
        url: "clinicservice.asmx/ChangeLanguage",
        data: '',
        complete: function () {

        },
        success: function (data) {
            window.location = data.d;
            
        },
        error: function (result) {
            console.log(result);
        }
    });  
   
}

function shownav(e) {
    $("#ftco-nav").show();

    var expanded = $("#btnmenu").attr("aria-expanded");
    console.log("collapse:" + expanded);
    if (expanded == "true") {
        $("#ftco-nav").css("position", "absolute");
        $("#ftco-nav").css("opacity", "0");
    } else {
        $("#ftco-nav").css("position", "relative");
        $("#ftco-nav").css("opacity", "1");
    }
}
function clickmenu(e) {
    
}
function popup_appointment() {
    $("#div_alert").show();
    $("#div_message").html('<iframe src="bookappointment.aspx" style="width:100%;border:none;height:90vh;"></iframe>');
}
function popup_appointmentkh() {
    $("#div_alert").show();
    $("#div_message").html('<iframe src="bookappointmentkh.aspx" style="width:100%;border:none;height:90vh;"></iframe>');
}
function close_appointment() {
    $("#div_alert").hide();
    //$("#div_message").html('<iframe src="bookappointment.aspx" style="width:100%;border:none;height:90vh;"></iframe>');
}


function show_book_appointment() {
    $("#div_book_appointment").show();

}


        function make_appointment(popup) {

            var firstname = $("#txtfirstname").val();
            var lastname = $("#txtlastname").val();
            var service = $('#dplservice').find(":selected").text();
            var phone = $("#txtphone").val();
            var appdate = $("#txtdate").val();
            var apptime = $("#txttime").val();
            var message = $("#txtmessage").val();
            var data_valid = true;
            if (firstname == "" || firstname == undefined) {
                alert("Please enter your first name.")
                return;
            }
            if (lastname == "" || lastname == undefined) {
                alert("Please enter your last name.")
                return;
            }
            if (service == "" || service == undefined || service == "Select Your Services") {
                alert("Please enter service.")
                return;
            }
            if (phone == "" || phone == undefined) {
                alert("Please enter you phone number.")
                return;
            }

            if ($.isNumeric(phone.replace(" ", "")) == false || phone.replace(" ", "").length < 9 || phone.replace(" ", "").length > 10) {
                alert("Invalid phone number.")
                return;
            }

            if (appdate == "" || appdate == undefined) {
                alert("Please select appointment date.")
                return;
            }

            if (apptime == "" || apptime == undefined) {
                alert("Please select appointment time.")
                return;
            }



            SendEmailandTelegram("metachildrenseyeclinic@gmail.com", "Request for appointment", firstname, lastname, service, phone, appdate, apptime, message, popup);

        }


        function SendEmailandTelegram(ToEmail, Subject, firstname, lastname, service, phone, a_date, a_time, message, popup) {
            console.log("start sendEmail")
            var obj_par = { toemail: ToEmail, subject: Subject, firstname: firstname, lastname: lastname, phone: phone, service: service, message: message, a_date: a_date, a_time: a_time }
            $.ajax({
                type: "POST",
                dataType: "Json",
                contentType: "application/json; charset=utf-8",
                url: "clinicservice.asmx/SendEmailandTelegram",
                data: JSON.stringify(obj_par),
                beforeSend: function () {

                    if (popup == true) {
                        console.log("ajax start");
                        $('#div_loadding_popup').append('<div style="text-align:center;margin-top:30vh;width:100%"> <img src = "images/waiting.gif" style = "height:50px" /> </div >');
                    } else {
                        $('#div_loadding').append('<div style="text-align:center;margin-top:30vh;width:100%"> <img src = "images/waiting.gif" style = "height:50px" /> </div >');
                    }

                },
                complete: function () {

                    if (popup == true) {
                        console.log("ajax completed");
                        $('#div_loadding_popup').hide();
                    } else {
                        $('#div_loadding').hide();
                    }

                },
                success: function (data) {
                    console.log(data.d);
                    if (data.d == 'sent') {
                        if (popup == true) {
                            $("#div_appoinment_form_popup").html("We have got you appointment, our teams will contact you sooon. Thanks");

                        } else {
                            alert("We have got you appointment, our teams will contact you sooon. Thanks");
                        }
                    } else {
                        alert("Eror! Please try gain.");
                    }
                },
                error: function (result) {
                    console.log(result);
                }
            });
        }


function make_appointment_old(popup) {
    
    var firstname = $("#txtfirstname").val();
    var lastname = $("#txtlastname").val();
    var service = $('#dplservice').find(":selected").text();
    var phone = $("#txtphone").val();
    var appdate = $("#txtdate").val();
    var apptime = $("#txttime").val();
    var message = $("#txtmessage").val();
    var data_valid = true;
    if (firstname == "" || firstname == undefined) {
        alert("Please enter your first name.")
        return;
    }
    if (lastname == "" || lastname == undefined) {
        alert("Please enter your last name.")
        return;
    }
    if (service == "" || service == undefined || service=="Select Your Services") {
        alert("Please enter service.")
        return;
    }
    if (phone == "" || phone == undefined) {
        alert("Please enter you phone number.")
        return;
    }

    if ($.isNumeric(phone.replace(" ", "")) == false || phone.replace(" ", "").length < 9 || phone.replace(" ", "").length > 10) {
        alert("Invalid phone number.")
        return;
    }

    if (appdate == "" || appdate == undefined) {
        alert("Please select appointment date.")
        return;
    }

    if (apptime == "" || apptime == undefined) {
        alert("Please select appointment time.")
        return;
    }


    
    SendEmailandTelegram("metachildrenseyeclinic@gmail.com", "Request for appointment", firstname, lastname, service, phone, appdate, apptime, message,popup); 

}

function SendEmailandTelegram(ToEmail, Subject, firstname, lastname, service, phone, a_date, a_time, message, popup) {
    console.log("start sendEmail")
    var obj_par = { toemail: ToEmail, subject: Subject, firstname: firstname, lastname: lastname, phone: phone, service: service, message: message, a_date: a_date, a_time: a_time }
    $.ajax({
        type: "POST",
        dataType: "Json",
        contentType: "application/json; charset=utf-8",
        url: "clinicservice.asmx/SendEmailandTelegram",
        data: JSON.stringify(obj_par),
        beforeSend: function () {

            if (popup == true) {
                console.log("ajax start");
                $('#div_loadding_popup').append('<div style="text-align:center;margin-top:30vh;width:100%"> <img src = "images/waiting.gif" style = "height:50px" /> </div >');
            } else {
                $('#div_loadding').append('<div style="text-align:center;margin-top:30vh;width:100%"> <img src = "images/waiting.gif" style = "height:50px" /> </div >');
            }

        },
        complete: function () {

            if (popup == true) {
                console.log("ajax completed");
                $('#div_loadding_popup').hide();
            } else {
                $('#div_loadding').hide();
            }

        },
        success: function (data) {
            console.log(data.d);
            if (data.d == 'sent') {
                if (popup == true) {
                    $("#div_appoinment_form_popup").html("We have got you appointment, our teams will contact you sooon. Thanks");

                } else {
                    alert("We have got you appointment, our teams will contact you sooon. Thanks");
                }
            } else {
                alert("Eror! Please try gain.");
            }
        },
        error: function (result) {
            console.log(result);
        }
    });
}


function SendEmail(ToEmail, Subject, firstname, lastname, service, phone, a_date, a_time, message,popup) {
    console.log("start sendEmail")
    var obj_par = {toemail:ToEmail, subject:Subject, firstname:firstname,lastname:lastname,phone:phone,service:service,message:message,a_date:a_date, a_time:a_time}
    $.ajax({
        type: "POST",
        dataType: "Json",
        contentType: "application/json; charset=utf-8",
        url: "clinicservice.asmx/SendEmail",
        data: JSON.stringify(obj_par),
        beforeSend: function () {
          
            if (popup == true) {
                console.log("ajax start");
                $('#div_loadding_popup').append('<div style="text-align:center;margin-top:30vh;width:100%"> <img src = "images/waiting.gif" style = "height:50px" /> </div >');
            } else {
                $('#div_loadding').append('<div style="text-align:center;margin-top:30vh;width:100%"> <img src = "images/waiting.gif" style = "height:50px" /> </div >');
            }
            
        },
        complete: function () {
            
            if (popup == true) {
                console.log("ajax completed");
                $('#div_loadding_popup').hide();
            } else {
                $('#div_loadding').hide();
            }
            
        },
        success: function (data) {
            console.log(data.d);
            if (data.d == 'sent') {
                if (popup == true) {
                    $("#div_appoinment_form_popup").html("We have got you appointment, our teams will contact you sooon. Thanks");
                   
                } else {
                    alert("We have got you appointment, our teams will contact you sooon. Thanks");
                }
            } else {
                alert("Eror! Please try gain.");
            }
        },
        error: function (result) {
            console.log(result);
        }
    });
}


function GetHeaderMedia() {
    console.log("start GetHeaderMedia")
    $.ajax({
        cache: false,
        async: false,
        type: "POST",
        dataType: "Json",
        contentType: "application/json; charset=utf-8",
        url: "clinicservice.asmx/GetHeaderMedia",
        data: '',
        complete: function () {
            
        },
        success: function (data) {
            console.log(data.d);
            $(".py-1").html(data.d);
        },
        error: function (result) {
            console.log(result);
        }
    });
}

function GetHeaderContact() {
    $.ajax({
        cache: false,
        async: false,
        type: "POST",
        dataType: "Json",
        contentType: "application/json; charset=utf-8",
        url: "ClinicService.asmx/GetHeaderContact",
        data: '',
        complete: function () {

        },
        success: function (data) {
            console.log(data.d);
            $(".myheadercontact").html(data.d);
        },
        error: function (result) {
            console.log(result);
        }
    });
}


function GetHeaderMenu(menu) {
    $.ajax({
        cache: false,
        async: false,
        type: "POST",
        dataType: "Json",
        contentType: "application/json; charset=utf-8",
        url: "ClinicService.asmx/GetHeaderMenu",
        data: '{Menu:"' + menu + '"}',
        complete: function () {

        },
        success: function (data) {
            console.log(data.d);
            $("#ftco-navbar").html(data.d);
        },
        error: function (result) {
            console.log(result);
        }
    });
}



function active_menu() {
    var menuname = window.location.pathname.replace("/","");
    $("#menu_" + menuname).addClass("active");
}