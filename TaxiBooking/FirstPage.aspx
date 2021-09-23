<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" Inherits="TaxiBooking.FirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 407px;
        }
        .auto-style2 {
            margin-top: 0px;
        }
    </style>
</head>
<body >
   
    
    <form id="form1" runat="server">
        <div>
            <br />
        </div>
        <p >
&nbsp;</p>
        <p style="font-size: 50px; color: #FF0000; font-style: normal; font-weight: 500; background-color: #000000;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Online&nbsp;&nbsp; Taxi&nbsp;&nbsp; Booking&nbsp;&nbsp; System</p>
        <p style="font-size: large; color: #FF0000; font-style: normal; font-weight: 500">
            &nbsp;</p>
        <p style="font-size: large; color: #FF0000; font-style: normal; font-weight: 500">
            &nbsp;</p>
        <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Adminlogin" runat="server" CssClass="auto-style1" Height="50px" OnClick="Button1_Click" Text="Admin login" Width="192px" ForeColor="#00CC00" PostBackUrl="~/Admin/AdminLogin.aspx" Font-Bold="True" Font-Size="Larger" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Userlogin" runat="server" CssClass="auto-style2" ForeColor="#009933" Height="50px" Text="User login" Width="188px" Font-Bold="True" Font-Size="Larger" />
        </p>
    </form>
</body>
</html>
