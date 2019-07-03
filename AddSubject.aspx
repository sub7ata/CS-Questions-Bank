﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AddSubject.aspx.vb" Inherits="AddSubject" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add a new subject</title>
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style3
        {
            width: 160px;
        }
        .style4
        {
            width: 200px;
        }
    </style>
</head>
<body id="top">
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row0">
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <asp:Label ID="Label1" runat="server" Text="Add New Subject" Font-Size="Medium" 
            ForeColor="White"></asp:Label>
    </div>
    <div class="fl_right">
      <form class="clear" method="post" action="#">
        &nbsp;</form>
    </div>
    <!-- ################################################################################################ --> 
  </header>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div class="group btmspace-30">
      <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style4">
                    Subject Name</td>
                <td class="style3">
                    <asp:TextBox ID="txtSubject" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblSubjectError" runat="server" ForeColor="#FF9933"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Description (Optional)</td>
                <td colspan="2">
                    <asp:TextBox ID="txtDescription" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style4">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="Honeydew" />
                </td>
                <td colspan="2">
                    <asp:Button ID="btnCanceal" runat="server" Text="Canceal" BackColor="#FFEBEA" />
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="3">
                    Note: After adding new subject, please reload the page.</td>
            </tr>
            <tr>
                <td class="style2" colspan="3">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="#FF9933"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
          
      </div>
      <!-- ################################################################################################ --> 
      
      <!-- / main body -->
    </main>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<!-- JAVASCRIPTS --> 
<script src="layout/scripts/jquery.min.js"></script> 
<script src="layout/scripts/jquery.fitvids.min.js"></script> 
<script src="layout/scripts/jquery.mobilemenu.js"></script> 
<script src="layout/scripts/tabslet/jquery.tabslet.min.js"></script>
</body>
</html>
