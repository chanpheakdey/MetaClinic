Imports System.Data
Imports System.Data.SqlClient
Imports System.Drawing
Imports System.Drawing.Imaging
Imports System.IO
Imports Microsoft.VisualBasic

Public Class DalGlbal

    Public Shared Function getConnectionString() As String
        Dim conn As String = "Data Source=SQL5107.site4now.net;Initial Catalog=db_a54acb_metaclinic;User Id=db_a54acb_metaclinic_admin;Password=reoun168"

        Return conn
    End Function




    Public Shared Function UploadPicture(FileUpload As FileUpload, Folder As String, PhotoIndex As Integer, Username As String) As String
        If (FileUpload.HasFile = False) Then
            ' No file uploaded!
            Return "no file"
        Else

            Dim FileName As String = Replace(Now.ToString("yyyy-MM-dd HH:mm:ss") & ".jpg", "-", "_").Replace(":", "_").Replace(" ", "_")  'FileUpload.FileName
            'Dim f As Boolean = FtpHelper.UploadFileFTP(FileUpload.FileBytes, FileName, "uploadstudentphototp", "pass$$$$", DalConnection.ftpServer)
            UploadPhoto(FileUpload, Folder, FileName)
            Dim photourl As String = "Upload/" & Folder & "/" & FileName

            add_photo(photourl, PhotoIndex, Username)
            Return photourl


        End If
    End Function


    Public Shared Sub UploadPhoto(FileUploadControl As FileUpload, Folder As String, FileName As String)
        Dim Test As FileUpload = FileUploadControl
        If FileUploadControl.HasFile Then
            Dim dirpath As String = HttpContext.Current.Server.MapPath("~/Upload/" & Folder)

            If Directory.Exists(dirpath) = False Then
                Directory.CreateDirectory(dirpath)
            End If

            Dim hfc As HttpFileCollection = HttpContext.Current.Request.Files


            For i As Integer = 0 To hfc.Count - 1

                Dim hpf As HttpPostedFile = hfc(i)
                'Dim prefix As String = lblTestID.Text + "_" + DateTime.Now.ToString.Replace(":", "").Replace("/", "") + "_"

                'Dim filename As String = Path.GetFileName(hpf.FileName)
                Dim img As New Bitmap(hpf.InputStream)



                Dim ImgFormat As ImageFormat = img.RawFormat
                'img = TestRotate(img)
                'img = FixedSize(img, 1446, 1446, False)

                'Dim mystream As Stream
                'img.Save(Server.MapPath("media/temp") & "/" & prefix + filename)

                'SaveStreamAsFile(Server.MapPath("media/temp"), mystream, prefix + filename)
                'AddURLToTable(Server.MapPath("media/temp") + "/" + prefix + filename)

                Using stream As New System.IO.MemoryStream

                    img.Save(stream, ImgFormat)
                    Dim fb As Byte() = stream.ToArray()

                    ''Dim path As String = "\\\\192.168.3.2\\\CurrentUploadPhoto\\" & Campus & "\\" & FileName
                    ''Path = dirpath.Replace("\", "\\") & "\\" & FileName
                    Dim path As String = dirpath & "/" & FileName
                    File.WriteAllBytes(path, fb)

                    'FtpHelper.UploadFileFTP(fb, prefix + filename, ftpUserNamePlacementTest, ftpPasswordPlacementTest, ftpServerPlacementTest)
                    'AddURLToTable(ftpServerPlacementTest + "/" + prefix + filename)
                    'AddURLToTable("http://edb2.acecambodia.org/Upload/PTPaper/" + prefix + filename)
                End Using

            Next
        End If

    End Sub

    Public Shared Function add_photo(PhotoUrl As String, PhotoIndex As Integer, Username As String) As String
        Dim conn As String = getConnectionString()
        Dim cmd As New SqlCommand
        Dim adapter As New SqlDataAdapter



        'execute the command
        Using cn As New SqlConnection

            cn.ConnectionString = conn
            cn.Open()
            cmd.CommandText = " INSERT INTO tblPhoto (PhotoUrl,PhotoIndex,CreatedDate,CreatedBy, Deleted) Values ('" & PhotoUrl & "'," & PhotoIndex & ",getdate(),'" & Username & "',0) "
            cmd.Connection = cn 'assign the connection

            cmd.ExecuteNonQuery()
            cn.Close()

        End Using

        Return ""
    End Function

    Public Function remove_photo(ID As Integer) As String
        Dim conn As String = getConnectionString()
        Dim cmd As New SqlCommand
        Dim adapter As New SqlDataAdapter



        'execute the command
        Using cn As New SqlConnection

            cn.ConnectionString = conn
            cn.Open()
            cmd.CommandText = "Update tblPhoto set Deleted=1 where ID= " & ID
            cmd.Connection = cn 'assign the connection

            cmd.ExecuteNonQuery()
            cn.Close()

        End Using

        Return ""
    End Function
    Public Shared Function get_list() As String
        Dim ds As New DataSet
        Dim cmd As New SqlCommand
        Dim adapter As New SqlDataAdapter
        Using cn As New SqlConnection
            cn.ConnectionString = getConnectionString()
            cn.Open()
            cmd.CommandText = "SELECT * from tblPhoto where isnull(deleted,0)=0"

            cmd.CommandType = CommandType.Text
            cmd.Connection = cn
            adapter.SelectCommand = cmd
            'fill the dataset
            adapter.Fill(ds)
            'return the dataset
            cn.Close()
        End Using

    End Function
End Class
