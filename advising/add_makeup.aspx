﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_makeup.aspx.cs" Inherits="advising.add_makeup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: 'Bahnschrift SemiBold SemiConden'; font-size: large">
            Enter the following values to add a Makeup Exam<br />
            <br />
            Date is in the format(mm-dd-yyyy)<br />
            <br />
            Type<br />
            <asp:TextBox ID="type" runat="server"></asp:TextBox>
            <br />
            Date<br />
      <asp:TextBox ID="data" runat="server" ></asp:TextBox>
            <br />
            Course ID<br />
            <asp:TextBox ID="course" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add" onClick="web" Font-Names="Bahnschrift SemiBold SemiConden" Font-Size="Large"/>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Go Back to Previous Page" Font-Names="Bahnschrift SemiBold SemiConden" Font-Size="Large" OnClick="back" />
        </div>
    </form>
</body>
</html>
