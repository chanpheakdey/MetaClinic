<%@ Page Language="VB" AutoEventWireup="false" CodeFile="uploadphoto.aspx.vb" Inherits="upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="js/clinic.js"></script>
    <script src="js/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="max-width:400px;margin:auto;">
            
                <table align="center">
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
                                        Order:
                                        <asp:TextBox ID="txtIndex" runat="server" Width="50px">1</asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:FileUpload ID="UploadTest" runat="server" TabIndex="17" Visible="True" Width="4cm" />
                                    </td>
                                    <td>
                                        <asp:Button ID="btnShow" runat="server" style="height: 26px" TabIndex="18" Text="Upload" Width="78px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="4cm">&nbsp;</td>
                                    <td width="4cm">&nbsp;</td>
                                    <td width="4cm">
                                        <asp:Label ID="lblInfo" runat="server" ForeColor="Red" style="text-align: center"></asp:Label>
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
