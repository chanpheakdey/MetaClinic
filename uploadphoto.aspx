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
        function login() {
            var username = $("#txt_username").val();
            var password = $("#txt_password").val();
            if (username == 'meta' && password == 'meta@2022') {
                $("#div_login").hide();
                $("#div_upload").show();
                $("#hdlogin").val("1");
            } else {
                alert("Invalid username or password.");
            }
        }
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
.div-input-text {
    padding: 15px;
    width: 200px;
    border-radius: 15px;
}
.button-print {
    padding: 10px;
    border-radius: 15px;
    background-color: white;
    font-weight: bold;
    border: solid 1px gray;
    margin-right:10px;
}
    </style>
</head>
<body onload="getphotolist()">

    <form id="form1" runat="server">
    <input type="hidden" value="0" id="hdlogin" runat="server" /> 
        <div style="max-width:400px;margin:auto;">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <div id="div_userlogin" style="text-align:center;">
                 <div class="login" id="div_login">
             <div style="font-size:xx-large;">
    <img src='images/logo.png' style='width:150px;'>
    
    </div>
            <div class="div-user">
            <div class="div-username" style="">Username:</div> 
                <asp:TextBox ID="txtUsername" CssClass="div-input-text" runat="server"></asp:TextBox>
                
            </div>
            <div class="div-user">
            <div class="div-username">Password:</div> <asp:TextBox ID="txtPassword" CssClass="div-input-text" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            
            <div style="padding:5px;">
                <asp:Button ID="btnLogin" CssClass="button-print" runat="server" Text="Login" />
            </div>
            <div>
                <asp:Label ID="lblInfologin" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div>
            </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <div id="div_upload">
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
                                    <td>
                                        <asp:Image ID="ImageContact" runat="server" BorderColor="Black" BorderStyle="Solid" Height="150px" ImageUrl="~/Styles/images/Unknown-person.gif" Width="300px" />
                                    </td>
                                    <td rowspan="3">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="padding:5px;">1- Order:<asp:TextBox ID="txtIndex" runat="server" Width="50px">1</asp:TextBox></div>
                                        
                                        <div style="padding:5px;">2- Choose File:<asp:FileUpload ID="UploadTest" runat="server" TabIndex="17" Visible="True" Width="4cm" /></div>
                                        <div style="padding:5px;">
                                            3-<asp:Button ID="btnShow" runat="server" style="height: 26px" TabIndex="18" Text="Upload" Width="78px" />
                                        </div>
                                        
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:center;">
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
            </asp:View>
        </asp:MultiView>
        
            
            
        </div>
    </form>
</body>
</html>
