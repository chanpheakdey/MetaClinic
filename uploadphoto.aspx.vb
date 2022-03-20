﻿
Partial Class upload
    Inherits System.Web.UI.Page


    Protected Sub btnShow_Click(sender As Object, e As EventArgs) Handles btnShow.Click
        lblInfo.Text = ""
        lblInfo.ForeColor = Drawing.Color.Blue

        Try
            Dim BalGl As New DalGlbal
            Dim photoindex As Integer = Val(txtIndex.Text)
            Dim photo_url As String = BalGl.UploadPicture(UploadTest, "services", photoindex, "")

            ImageContact.ImageUrl = photo_url

            lblInfo.Text = "Upload Success! "
            lblInfo.ForeColor = Drawing.Color.Blue

        Catch
            lblInfo.Text = "Error Upload!"
            lblInfo.ForeColor = Drawing.Color.Red
        End Try

        Page.ClientScript.RegisterStartupScript(Me.GetType(), "CallMyFunction", "getphotolist()", True)
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            MultiView1.ActiveViewIndex = 0
        End If
    End Sub



    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        If (txtUsername.Text = "meta" And txtPassword.Text = "meta@2022") Then
            MultiView1.ActiveViewIndex = 1
        Else
            lblInfologin.Text = "Invalid Username or Password."

        End If
    End Sub
End Class
