<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="BookNow.aspx.cs" Inherits="TaxiBooking.BookNow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        .auto - style1 {
            text - align: center;
        }
        .auto - style2 {
            width: 91%;
            height: 509px;
            border: 2px solid #999999;
            background - color: #C0C0C0;
        }
        .auto - style3 {
            text - align: center;
            width: 243px;
        }
        .auto - style4 {
            text - align: left;
        }

    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="text-center">
        <div>

            <div>
                <asp:Label runat="server" Text="" ID="label"></asp:Label>
            </div>

        </div>
            <asp:Label ID="Label1" runat="server" BackColor="#CCCCCC" BorderStyle="Groove" Font-Names="Bell MT" Font-Size="XX-Large" Text="Enter Your Details For Payment!!"></asp:Label>
        </div>
    <p class="auto-style1">
        &nbsp;</p>
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style3">Name :</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="535px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Mobile Number :</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server" Height="39px" Width="289px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Card Number :</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox3" runat="server" Height="39px" Width="289px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">CVV:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="39px" Width="114px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Amount :</td>
            <td>

                <asp:TextBox ID="TextBox5" runat="server" Height="39px" Width="114px" Text=""></asp:TextBox>


            </td>
        </tr>
    </table>
        <p class="text-center">
            <asp:Button ID="Button1" runat="server" BackColor="Silver" BorderColor="Gray" BorderStyle="Inset" Font-Bold="True" Font-Size="Medium" Height="104px" OnClick="Button1_Click" Text="Pay" Width="176px" />
        </p>
    </section>
</asp:Content>
