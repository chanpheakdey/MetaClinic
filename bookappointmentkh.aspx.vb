Imports System.Net
Imports System.Net.Mail
Imports System.Web.Services

Partial Class _Default
    Inherits System.Web.UI.Page



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



End Class
