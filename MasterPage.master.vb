
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim PageLanguageCookies As HttpCookie = New HttpCookie("PageLanguage")

        If IsNothing(Request.Cookies("PageLanguage")) Then
            PageLanguageCookies("Language") = "English"
            PageLanguageCookies.Expires = DateTime.Now.AddDays(5)
            Response.Cookies.Add(PageLanguageCookies)
        Else
            Dim PageLanguage As String = Request.Cookies("PageLanguage").Value
            PageLanguage = PageLanguage.Replace("Language=", "")
            If PageLanguage = "English" Then
                imglanguage.Src = "images/khmerlogo.png"
            Else
                imglanguage.Src = "images/englishlogo.png"
            End If
        End If

        Dim url As String = Request.Url.ToString
        Dim arr As String() = url.Split("/")
        Dim pagename As String = arr(arr.Length - 1)
        '//Creting a Cookie Object
        Dim _userInfoCookies As HttpCookie = New HttpCookie("UserInfo")
        If IsNothing(Request.Cookies("UserInfo")) Then
            '//Adding cookies to current web response
            Dim pre_page As String = _userInfoCookies("Pagename")
            '//Setting values inside it
            _userInfoCookies("Pagename") = pagename
            _userInfoCookies.Expires = DateTime.Now.AddDays(5)

            Response.Cookies.Add(_userInfoCookies)
        Else
            Dim c_pagename As String = Request.Cookies("UserInfo").Value
            c_pagename = c_pagename.Replace("Pagename=", "")
            If pagename <> c_pagename Then
                Response.Redirect(c_pagename)
            End If

        End If




    End Sub
End Class

