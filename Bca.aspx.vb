﻿Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Bca
    Inherits System.Web.UI.Page

    Protected Sub btnGo_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnGo.Click
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()
        Dim stream As String = "BCA"
        Dim institute As String = "Vidyasagar University"
        Dim semesters As String = ddlSemester.SelectedValue
        Dim sessios As Integer = Integer.Parse(ddlSession.SelectedValue)
        Dim quary As String = "select * from UploadedPdf where Stream='" + stream + "' and semester='" + semesters + "' and InstituteName='" + institute + "' and Sessions=" & sessios & ";"
        Dim da As New SqlDataAdapter(quary, sqlcon)
        Dim dt As New DataTable
        da.Fill(dt)
        If dt.Rows.Count = 0 Then
            lblMessage.Text = "No result found."
            gvBCA.Visible = False
        Else
            gvBCA.Visible = True
            lblMessage.Text = ""
            gvBCA.DataSource = dt
            DataBind()
        End If
        sqlcon.Close()
    End Sub

    Protected Sub gvBCA_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvBCA.RowCommand
        If e.CommandName = "Select" Then
            Session("PdfID") = e.CommandArgument
            Response.Redirect("ViewQuestionPaper.aspx")
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
