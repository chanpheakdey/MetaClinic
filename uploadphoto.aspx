<%@ Page Language="VB" AutoEventWireup="false" CodeFile="uploadphoto.aspx.vb" Inherits="upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="js/clinic.js"></script>
    <script src="js/jquery.min.js"></script>
    <script>

        $(document).ready(function () {

            getphotolist();
        });

    </script>
    <style>
        table {
    border: 1px solid black;
}

th,td {
    border: 1px solid black;
    width: 100px;
    overflow: hidden;
    padding:5px;
}

.tbldate{
    border:none;
}
.tbldate tr td {
    border: none;
}

.f-money{
    text-align:right;
}
    </style>
</head>
<body onload="getphotolist()">
    <form id="form1" runat="server">
        <div style="max-width:400px;margin:auto;">
            
                <table align="center" class="tbldate">
                    <tr>
                        <td width="100%">Upload Image</td>
                    </tr>
                    <tr>
                        <td align="center" width="100%">
                            <table>
                                <tr>
                                    <td>

                                  
                            <table align="center">
                                <tr>
                                    <td colspan="3">
                                        <asp:Image ID="ImageContact" runat="server" BorderColor="Black" BorderStyle="Solid" Height="150px" ImageUrl="~/Styles/images/Unknown-person.gif" Width="300px" />
                                    </td>
                                    <td rowspan="3">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="padding:5px;">1- Order:<asp:TextBox ID="txtIndex" runat="server" Width="50px">1</asp:TextBox></div>
                                        
                                        <div style="padding:5px;">1- Choose File:<asp:FileUpload ID="UploadTest" runat="server" TabIndex="17" Visible="True" Width="4cm" /></div>
                                        <div style="padding:5px;">
                                            <asp:Button ID="btnShow" runat="server" style="height: 26px" TabIndex="18" Text="Upload" Width="78px" />
                                        </div>
                                        
                                        
                                    </td>
                                    <td>
                                        
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="text-align:center;">
                                        <asp:Label ID="lblInfo" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                                </table>
                                          </td>
                                    <td>

                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td width="100%">Image List</td>
                    </tr>
                    <tr>
                        <td width="100%">
                            <div id="div_list" runat="server"></div>
                        </td>
                    </tr>
                    </table>
           
        </div>
    </form>
</body>
</html>
