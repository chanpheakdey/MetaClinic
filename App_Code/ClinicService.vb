Imports System.Web
Imports System.Web.Script.Services
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Net
Imports System.Net.Mail
Imports System.Data
Imports System.Data.SqlClient


' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
' <System.Web.Script.Services.ScriptService()> _
<WebService(Namespace:="http://tempuri.org/")>
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)>
<ScriptService>
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Public Class ClinicService
    Inherits System.Web.Services.WebService
    <WebMethod()>
    Public Function SendEmailandTelegram(toemail As String, subject As String, firstname As String, lastname As String, service As String, phone As String, a_date As String, a_time As String, message As String) As String

        Try
            SendEmail(toemail, subject, firstname, lastname, service, phone, a_date, a_time, message)

            Dim Telegram_message As String = ""
            Telegram_message &= TelegramBody(firstname, lastname, service, phone, a_date, a_time, message)
            Dim chatid As String = ""
            'chatid = "1426975719"
            chatid = "-633516046"
            TelegramSendMessage("5017681954:AAGzmfn0tvwAvt06ESyrEbabPuQtM4iD7Bo", chatid, Telegram_message)

            Return "sent"
        Catch ex As Exception
            Return "error"
        End Try

    End Function

    Public Shared connectionstring As String = "Data Source=SQL5107.site4now.net;Initial Catalog=db_a54acb_metaclinic;User Id=db_a54acb_metaclinic_admin;Password=reoun168"

    Public Class CLPhoto
        Public Property ID As Integer
        Public Property PhotoUrl As String
        Public Property PhotoIndex As Integer
        Public Property CreatedDate As String
        Public Property CreatedBy As String

    End Class




    <WebMethod()>
    Public Function RemovePhoto(ID As String) As String
        Dim Dal As New DalGlbal
        Dal.remove_photo(ID)
        Return ""
    End Function
    <WebMethod()>
    Public Function GetPhotoList() As List(Of CLPhoto)
        Dim ds As New DataSet
        Dim cmd As New SqlCommand
        Dim adapter As New SqlDataAdapter
        Using cn As New SqlConnection
            cn.ConnectionString = connectionstring
            cn.Open()
            cmd.CommandText = "SELECT ID, PhotoUrl, PhotoIndex, CreatedDate, CreatedBy from tblPhoto Where Deleted=0 Order by PhotoIndex asc"

            cmd.CommandType = CommandType.Text
            cmd.Connection = cn
            adapter.SelectCommand = cmd
            'fill the dataset
            adapter.Fill(ds)
            'return the dataset
            cn.Close()
        End Using

        Dim lstPhoto As New List(Of CLPhoto)
        For i = 0 To ds.Tables(0).Rows.Count - 1
            Dim ID As Integer = ds.Tables(0).Rows(i)("ID")
            Dim PhotoUrl As String = ds.Tables(0).Rows(i)("PhotoUrl").ToString
            Dim PhotoIndex As Integer = ds.Tables(0).Rows(i)("PhotoIndex")
            Dim CreatedDate As String = CDate(ds.Tables(0).Rows(i)("CreatedDate")).ToString("dd/MM/yyyy HH:mm")
            Dim CreatedBy As String = ds.Tables(0).Rows(i)("CreatedBy").ToString
            Dim clPhoto As New CLPhoto
            clPhoto.ID = ID
            clPhoto.PhotoUrl = PhotoUrl
            clPhoto.PhotoIndex = PhotoIndex
            clPhoto.CreatedDate = CreatedDate
            clPhoto.CreatedBy = CreatedBy
            lstPhoto.Add(clPhoto)


        Next
        Return lstPhoto
    End Function

    <WebMethod()>
    Public Function CountIndicator() As Integer
        Dim ds As New DataSet
        Dim cmd As New SqlCommand
        Dim adapter As New SqlDataAdapter
        Using cn As New SqlConnection
            cn.ConnectionString = connectionstring
            cn.Open()
            cmd.CommandText = "SELECT count(ID) as Total from tblPhoto Where Deleted=0"

            cmd.CommandType = CommandType.Text
            cmd.Connection = cn
            adapter.SelectCommand = cmd
            'fill the dataset
            adapter.Fill(ds)
            'return the dataset
            cn.Close()
        End Using

        Return ds.Tables(0).Rows(0)("Total")

    End Function

    Public Function TelegramSendMessage(ByVal apilToken As String, ByVal Chatid As String, ByVal text As String) As String
        ServicePointManager.Expect100Continue = True
        ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12

        Dim urlString As String = "https://api.telegram.org/bot" & apilToken & "/sendMessage?chat_id=" & Chatid & "&parse_mode=MarkdownV2&text=" & text
        Dim webclient As WebClient = New WebClient()
        Return webclient.DownloadString(urlString)
    End Function
    Public Shared Function TelegramBody(firstname As String, lastname As String, service As String, phone As String, a_date As String, a_time As String, message As String) As String

        Dim html As String = ""
        html &= "*Appointment*" & Chr(10)
        html &= "First Name: " & firstname & Chr(10)
        html &= "Last Name: " & lastname & Chr(10)
        html &= "Selected Service: *" & service & "*" & Chr(10)
        html &= "Phone: " & phone & Chr(10)
        html &= "Date: *" & a_date & "*" & Chr(10)
        html &= "Time: *" & a_time & "*" & Chr(10)
        html &= "Message: " & message & Chr(10)
        Return html
    End Function
    <WebMethod()>
    Public Function ChangeMenu(Menu As String) As String
        Dim PageLanguage As String = HttpContext.Current.Request.Cookies("PageLanguage").Value
        Dim CurrentLanguage As String = PageLanguage.Replace("Language=", "")
        If CurrentLanguage = "Khmer" Then
            ChangePageName(Menu & "kh")
            Return Menu & "kh"
        Else
            ChangePageName(Menu)
            Return Menu
        End If


    End Function
    <WebMethod()>
    Public Function ChangeLanguage() As String

        Dim PageLanguageCookies As HttpCookie = New HttpCookie("PageLanguage")

        Dim pagename As String = HttpContext.Current.Request.Cookies("UserInfo").Value
        pagename = pagename.Replace("Pagename=", "").Replace(".aspx", "")

        If pagename = "" Then
            pagename = "index"
        End If

        Dim PageLanguage As String = HttpContext.Current.Request.Cookies("PageLanguage").Value
        Dim CurrentLanguage As String = PageLanguage.Replace("Language=", "")
        If CurrentLanguage = "Khmer" Then
            PageLanguageCookies("Language") = "English"
            PageLanguageCookies.Expires = DateTime.Now.AddDays(5)
            HttpContext.Current.Response.Cookies.Add(PageLanguageCookies)

            ChangePageName(pagename.Substring(0, pagename.Length - 2))
            Return pagename.Substring(0, pagename.Length - 2)
        Else
            PageLanguageCookies("Language") = "Khmer"
            PageLanguageCookies.Expires = DateTime.Now.AddDays(5)
            HttpContext.Current.Response.Cookies.Add(PageLanguageCookies)
            ChangePageName(pagename & "kh")
            Return pagename & "kh"
        End If

    End Function


    Public Shadows Sub ChangePageName(pagename As String)
        Dim _userInfoCookies As HttpCookie = New HttpCookie("UserInfo")

        '//Adding cookies to current web response
        Dim pre_page As String = _userInfoCookies("Pagename")
        '//Setting values inside it
        _userInfoCookies("Pagename") = pagename
        _userInfoCookies.Expires = DateTime.Now.AddDays(5)

        HttpContext.Current.Response.Cookies.Add(_userInfoCookies)
    End Sub
    <WebMethod()>
    Public Function SendEmail(toemail As String, subject As String, firstname As String, lastname As String, service As String, phone As String, a_date As String, a_time As String, message As String) As String
        Dim HostAdd As String = ConfigurationManager.AppSettings("Host").ToString
        Dim FromEmail As String = "noreply.metaclinic@gmail.com"
        Dim Password As String = "Cambodia6359"

        Dim mailMessage As New MailMessage
        mailMessage.From = New MailAddress(FromEmail)
        mailMessage.Subject = subject
        mailMessage.Body = EmailBody(firstname, lastname, service, phone, a_date, a_time, message)
        mailMessage.IsBodyHtml = True
        mailMessage.To.Add(New MailAddress(toemail))

        Dim smtp As New SmtpClient
        smtp.Host = HostAdd
        smtp.UseDefaultCredentials = True
        smtp.EnableSsl = True


        Dim Credential As New NetworkCredential
        Credential.UserName = mailMessage.From.Address
        Credential.Password = Password
        smtp.Credentials = Credential
        smtp.Port = 587
        Try
            smtp.Send(mailMessage)

            Return "sent"
        Catch ex As Exception
            Return "error"
        End Try


    End Function
    Public Shared Function EmailBody(firstname As String, lastname As String, service As String, phone As String, a_date As String, a_time As String, message As String) As String

        Dim html As String = "<div style='padding: 1rem;'>"
        html &= "<h3 style='font-size 16px; margin-bottom: 30px; color: #772879; text-transform: uppercase; letter-spacing: 3px; font-weight: 600;'>Appointment </h3>"
        html &= "<div class=''>"
        html &= "<div class='form-group'>First Name: <b>" & firstname & "</b></div>"
        html &= "<div class='form-group'>Last Name: <b>" & lastname & "</b></div>"
        html &= "</div>"
        html &= "<div class=''>"
        html &= "<div class='form-group'>"
        html &= "<div class='form-field'>"
        html &= "<div class='select-wrap'>"
        html &= "<div class='icon'>&nbsp;</div>"
        html &= "Selected Service: <b>" & service & "</b>"
        html &= "</div>"
        html &= "</div>"
        html &= "<div class='form-group'>Phone: <b>" & phone & "</b></div>"
        html &= "</div>"
        html &= "<div class=''>"
        html &= "<div class='form-group'>"
        html &= "<div class='input-wrap'>"
        html &= "<div class='icon'>&nbsp;</div>"
        html &= "Date: <b>" & a_date & "</b>"
        html &= "<br />"
        html &= "Time: <b>" & a_time & "</b>"
        html &= "</div>"
        html &= "</div>"
        html &= "<div class=''>"
        html &= "Message: <b>" & message & "</b>"

        html &= "</div>"
        html &= "</div>"
        Return html
    End Function
    <WebMethod>
    Public Function GetHeaderMedia() As String
        Dim html As String = ""
        html &= "<div class='container'>"
        html &= "<div class='row'>"
        html &= "<div class='col-sm text-center text-md-left mb-md-0 mb-2 pr-md-4 d-flex topper align-items-center'>"
        html &= "<p class='mb-0 w-100'>"
        html &= "<span class='fa fa-paper-plane'></span>"
        html &= "<span class='text'><a href='https//preview.colorlib.com/cdn-cgi/l/email-protection' class='__cf_email__' data-cfemail='add4c2d8dfc8c0ccc4c1edc8c0ccc4c183cec2c0'>[email&#160;protected]</a></span>"
        html &= "</p>"
        html &= "</div>"
        html &= "<div class='col-sm justify-content-center d-flex mb-md-0 mb-2'>"
        html &= "<div class='social-media'>"
        html &= "<p class='mb-0 d-flex'>"
        html &= "<a href='#' class='d-flex align-items-center justify-content-center'><span class='fa fa-facebook'><i class='sr-only'>Facebook</i></span></a>"
        html &= "<a href='#' class='d-flex align-items-center justify-content-center'><span class='fa fa-twitter'><i class='sr-only'>Twitter</i></span></a>"
        html &= "<a href='#' class='d-flex align-items-center justify-content-center'><span class='fa fa-instagram'><i class='sr-only'>Instagram</i></span></a>"
        html &= "<a href='#' class='d-flex align-items-center justify-content-center'><span class='fa fa-dribbble'><i class='sr-only'>Dribbble</i></span></a>"
        html &= "</p>"
        html &= "</div>"
        html &= "</div>"
        html &= "<div class='col-sm-12 col-md-6 col-lg-7 d-flex topper align-items-center text-lg-right justify-content-end'>"

        html &= "<p class='mb-0 register-link'><a href='#' class='btn btn-primary' > Book An Appointment</a></p>"

        html &= "</div>"
        html &= "</div>"
        html &= "</div>"

        Return html

    End Function

    <WebMethod>
    Public Function GetHeaderContact() As String
        Dim html As String = ""
        html &= "<div class='container'>"
        html &= "<div class='row d-flex align-items-start align-items-center px-3 px-md-0'>"
        html &= "<div class='col-md-4 d-flex mb-2 mb-md-0'>"
        html &= "<a class='navbar-brand d-flex align-items-center' href='index.aspx'>"
        html &= "<img src='images/logo.png' style='height:80px;' />"

        html &= "</a>"
        html &= "</div>"
        html &= "<div class='col-md-4 d-flex topper mb-md-0 mb-2 align-items-center'>"
        html &= "<div class='icon d-flex justify-content-center align-items-center'>"
        html &= "<span class='fa fa-map'></span>"
        html &= "</div>"
        html &= "<div class='pr-md-4 pl-md-3 pl-3 text'>"
        html &= "<p class='con'><span>Free Call</span> <span>+1 234 456 78910</span></p>"
        html &= "<p class='con'>Call Us Now 24/7 Customer Support</p>"
        html &= "</div>"
        html &= "</div>"
        html &= "<div class='col-md-4 d-flex topper mb-md-0 align-items-center'>"
        html &= "<div class='icon d-flex justify-content-center align-items-center'><span class='fa fa-paper-plane'></span>"
        html &= "</div>"
        html &= "<div class='text pl-3 pl-md-3'>"
        html &= "<p class='hr'><span>Our Location</span></p>"
        html &= "<p class='con'>198 West 21th Street, Suite 721 New York NY 10016</p>"
        html &= "</div>"
        html &= "</div>"
        html &= "</div>"
        html &= "</div>"

        Return html
    End Function

    <WebMethod>
    Public Function GetHeaderMenu(Menu As String) As String
        Menu = Menu.Replace("/", "").Replace("\", "")
        Dim index_active As String = IIf(Menu = "index", " active", "")
        Dim about_active As String = IIf(Menu = "about", " active", "")
        Dim services_active As String = IIf(Menu = "services", " active", "")
        Dim doctors_active As String = IIf(Menu = "doctors", " active", "")
        Dim department_active As String = IIf(Menu = "department", " active", "")
        Dim pricing_active As String = IIf(Menu = "pricing", " active", "")
        Dim gallery_active As String = IIf(Menu = "gallery", " active", "")
        Dim contact_active As String = IIf(Menu = "contact", " active", "")

        Dim html As String = ""
        html &= "<div class='container d-flex align-items-center'>"
        html &= "<button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#ftco-nav' aria-controls='ftco-nav' aria-expanded='false' aria-label='Toggle navigation'>"
        html &= "<span class='fa fa-bars'></span> Menu"
        html &= "</button>"
        html &= "<div class='collapse navbar-collapse' id='ftco-nav'>"
        html &= "<ul class='navbar-nav m-auto'>"
        html &= "<li class='nav-item" & index_active & "'><a href='index.aspx' class='nav-link'>Home</a></li>"
        html &= "<li class='nav-item" & about_active & "'><a href='about.aspx' class='nav-link'>About</a></li>"
        html &= "<li class='nav-item" & services_active & "'><a href='services.aspx' class='nav-link'>Services</a></li>"
        html &= "<li class='nav-item" & doctors_active & "'><a href='doctors.aspx' class='nav-link'>Doctors</a></li>"
        html &= "<li class='nav-item" & department_active & "'><a href='department.aspx' class='nav-link'>Departments</a></li>"
        html &= "<li class='nav-item" & pricing_active & "'><a href='pricing.aspx' class='nav-link'>Pricing</a></li>"
        html &= "<li class='nav-item" & gallery_active & "'><a href='gallery.aspx' class='nav-link'>Gallery</a></li>"
        'html &= "<li class='nav-item'><a href='gallery.aspx' class='nav-link'>Blog</a></li>"
        html &= "<li class='nav-item" & contact_active & "'><a href='contact.aspx' class='nav-link'>Contact</a></li>"
        html &= "</ul>"
        html &= "</div>"
        html &= "</div>"

        Return html
    End Function

End Class