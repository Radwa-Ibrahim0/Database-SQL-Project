﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="requestCHAdvisor.aspx.cs" Inherits="advisor.requestch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="Semester Code"></asp:Label>
        </div>
        <div class="wlp-whitespace-only-element-expansion">
            <asp:TextBox runat="server" ID="sc"></asp:TextBox>&nbsp;</div>
        <div class="wlp-whitespace-only-element-expansion">
            <asp:Label runat="server" Text="Request ID"></asp:Label>&nbsp;</div>
        <div class="wlp-whitespace-only-element-expansion">
            <asp:TextBox runat="server" ID="rid"></asp:TextBox>&nbsp;</div>
        <div class="wlp-whitespace-only-element-expansion">&nbsp;</div>
        <div class="wlp-whitespace-only-element-expansion">
            <asp:Button runat="server" Text="Approve/Reject" onClick="web"></asp:Button>&nbsp; </div>
            <div class="wlp-whitespace-only-element-expansion">
<asp:Button runat="server" Text="Back" OnClick="bac"></asp:Button>&nbsp;</div>




    </form>
</body>
</html>
