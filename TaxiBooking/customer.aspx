<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="TaxiBooking.customer"%>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" runat="server">
<head>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css"/>
    <style>
        #form
        {
           /* background-color:black;
            color:white;
            width:300px;*/
            padding: 20px;
            margin:190px auto 0;
            margin-top:100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="bg-dark text-light w-25" id="form">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="First Name" ></asp:Label><br />
                <asp:TextBox ID="TextBox1" placeholder="Enter Your First Name" class="form-control" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Valid Username" ControlToValidate="TextBox1" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter First Name" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </div>
            <br />
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Last Name" ></asp:Label><br />
                <asp:TextBox ID="TextBox2" placeholder="Enter Your Last Name" class="form-control" runat="server"></asp:TextBox>
                 <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Valid Username" ControlToValidate="TextBox2" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Last Name" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            </div>
            <br />
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Email ID" ></asp:Label><br />
                <asp:TextBox ID="TextBox3" placeholder="Enter Your Email ID" class="form-control" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please Enter Valid Email ID" ControlToValidate="TextBox3" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Email ID" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
            </div>
            <br />
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Phone Number" ></asp:Label><br />
                <asp:TextBox ID="TextBox4" placeholder="Enter Your Phone Number" class="form-control" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please Enter Valid Phone Number" ControlToValidate="TextBox4" ValidationExpression="^(\+\d{1,2}\s?)?1?\-?\.?\s?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Phone Number" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
           
            </div>
            <br />
              <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Please Enter Your Password" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
           
            </div>
        <br />
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Please Enter Your Password Again" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Password Again" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" Display="Dynamic" runat="server" ErrorMessage="Password must be same" ControlToCompare="TextBox5" ControlToValidate="TextBox6"></asp:CompareValidator>
            </div>
        <br />
            <asp:Button ID="Button1" runat="server" Text="Create New Account" class="btn btn-light" OnClick="Button1_Click" />
        <br />
            <small>Already have an Account <a href="customerlogin.aspx"> Click Here</a> to Login</small>
    </div>
        
        
        
    </form>
</body>
</html>
