﻿
Partial Class upload
    Inherits System.Web.UI.Page


    Protected Sub btnShow_Click(sender As Object, e As EventArgs) Handles btnShow.Click
        lblInfo.Text = ""
        lblInfo.ForeColor = Drawing.Color.Blue

        Try
            Dim BalGl As New DalGlbal

            Dim photo_url As String = BalGl.UploadPicture(UploadTest, "services")

            ImageContact.ImageUrl = photo_url

            lblInfo.Text = "Upload Success! "
            lblInfo.ForeColor = Drawing.Color.Blue
        Catch
            lblInfo.Text = "Error Upload!"
            lblInfo.ForeColor = Drawing.Color.Red
        End Try
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Public Sub LoadImagelist()

    End Sub
End Class
