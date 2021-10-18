<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerlogin.aspx.cs" Inherits="TaxiBooking.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    
       <style>
        #form
        {
            padding: 20px;
            margin:190px auto 0;
            margin-top:140px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="bg-dark text-light w-25" id="form">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Email ID" ></asp:Label><br />
                <asp:TextBox ID="TextBox1" placeholder="Enter Your Email ID" class="form-control" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Valid Email ID" ControlToValidate="TextBox1" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Email ID" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </div>
            <br />
             <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Please Enter Your Password" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
           
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Sign In" class="btn btn-light" OnClick="Button1_Click" />
        <br />
            <small>Do not have an Account <a href="customer.aspx"> Click Here</a> to Sign Up</small>
    </div>
        
           
        
    </form>

</body>
</html>
