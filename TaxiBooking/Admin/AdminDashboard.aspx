<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="TaxiBooking.Admin.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            margin-top: 37px;
            height: 271px;
        }
        .auto-style3 {
            width: 690px;
            margin-left: 356px;
        }
        .auto-style4 {
            width: 297px;
        }
        .auto-style5 {
            width: 297px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="auto-style3"> &nbsp;</h3>
    <h3 class="auto-style3"> ADD NEW ITEM</h3>
        <table class="auto-style2">
        <tr>
            <td class="auto-style5">Taxi Name</td>
            <td class="auto-style6">
                <asp:TextBox ID="Taxi_name" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Taxi Number</td>
            <td>
                <asp:TextBox ID="Taxi_num" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Taxi Description</td>
            <td>
                <asp:TextBox ID="Description" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Per KM Rent</td>
            <td>
                <asp:TextBox ID="Taxi_prent" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Taxi image</td>
            <td>
                <asp:FileUpload ID="Taxi_image" runat="server" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Status</td>
            <td>
                <asp:TextBox ID="Taxi_status" runat="server" Width="271px"></asp:TextBox>&nbsp; Enter 1 if Taxi is avaible and 0 if not avaible</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"  >&nbsp;</td>
            <td>
                <asp:Button ID="Taxi_add" runat="server" Text="Add" OnClick="Taxi_add_Click" /></td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
    <asp:HyperLink ID="view" runat="server" Font-Bold="True" ForeColor="Blue" NavigateUrl="~/Admin/AdminView.aspx">View Records</asp:HyperLink>
    
</asp:Content>
