<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminView.aspx.cs" Inherits="TaxiBooking.Admin.AdminView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    
   
        
    <br />
    <br />
    <br />
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="taxi_name" HeaderText="taxi_name" SortExpression="taxi_name" />
            <asp:BoundField DataField="taxi_num" HeaderText="taxi_num" SortExpression="taxi_num" />
            <asp:BoundField DataField="taxi_desc" HeaderText="taxi_desc" SortExpression="taxi_desc" />
            <asp:BoundField DataField="rent_per_km" HeaderText="rent_per_km" SortExpression="rent_per_km" />
            <asp:TemplateField HeaderText="taxi_image" SortExpression="taxi_image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("taxi_image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("taxi_image") %>' Width="200px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
        </Columns>
    </asp:GridView>
    <p>
<<<<<<< HEAD
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Admin_db%>" DeleteCommand="DELETE FROM [Taxi] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Taxi] ([taxi_name], [taxi_num], [taxi_desc], [rent_per_km], [taxi_image], [status]) VALUES (@taxi_name, @taxi_num, @taxi_desc, @rent_per_km, @taxi_image, @status)" SelectCommand="SELECT * FROM [Taxi]" UpdateCommand="UPDATE [Taxi] SET [taxi_name] = @taxi_name, [taxi_num] = @taxi_num, [taxi_desc] = @taxi_desc, [rent_per_km] = @rent_per_km, [taxi_image] = @taxi_image, [status] = @status WHERE [Id] = @Id">
=======
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Admin_db %>" DeleteCommand="DELETE FROM [Taxi] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Taxi] ([taxi_name], [taxi_num], [taxi_desc], [rent_per_km], [taxi_image], [status]) VALUES (@taxi_name, @taxi_num, @taxi_desc, @rent_per_km, @taxi_image, @status)" SelectCommand="SELECT * FROM [Taxi]" UpdateCommand="UPDATE [Taxi] SET [taxi_name] = @taxi_name, [taxi_num] = @taxi_num, [taxi_desc] = @taxi_desc, [rent_per_km] = @rent_per_km, [taxi_image] = @taxi_image, [status] = @status WHERE [Id] = @Id">
>>>>>>> ca76542cc51414ff0bf223608cdf59b7f37097db
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="taxi_name" Type="String" />
                <asp:Parameter Name="taxi_num" Type="String" />
                <asp:Parameter Name="taxi_desc" Type="String" />
                <asp:Parameter Name="rent_per_km" Type="Int32" />
                <asp:Parameter Name="taxi_image" Type="String" />
                <asp:Parameter Name="status" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="taxi_name" Type="String" />
                <asp:Parameter Name="taxi_num" Type="String" />
                <asp:Parameter Name="taxi_desc" Type="String" />
                <asp:Parameter Name="rent_per_km" Type="Int32" />
                <asp:Parameter Name="taxi_image" Type="String" />
                <asp:Parameter Name="status" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    
    
    
   
        
    
    
</asp:Content>
