<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs"  Inherits="TaxiBooking.login"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <title></title>
    <style>

        body::before{
    display: block;
    content: '';
    height: 60px;
       }

        #btn
        {
            padding-top:20%;
        }
        #link,#link1{
            padding:3px;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;

        }
        #col1,#col2{
            border-bottom: 3px solid black;
        }
        .col
        {
            margin:50px;
        }
       a{
           color:black;
           text-decoration:none;
           padding-bottom:5px;
       }
       a:hover
       {
           color: gray;
       }
    </style>
</head>
    
<body>


    <nav class="navbar navbar-expand-lg bg-dark navbar-dark pt-3 fixed-top">
            <div class="container">



                <a href="#" class="navbar-brand">Taxi Cab</a>



                
                   

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navmenu"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navmenu">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a href="#about" class="nav-link">About</a>
                        </li>
                        <li class="nav-item">
                            <a href="#questions" class="nav-link">Frequently Asked Questions</a>
                        </li>
                        <li class="nav-item">
                            <a href="#contact" class="nav-link">Contact</a>
                        </li>
                        <li class="nav-item">
                            <a href="login.aspx" class="nav-link">Login</a>
                       
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">Sign In</a>
                        </li>
                    </ul>
                </div>

            </div>
        </nav>

    <%-- Login Options --%>

        <div class="container">
           
           <div class="row g-8 text-center" id="btn">
   
               <div class="col" id="col1">
                    <a href="driver.aspx"><h2 id="link">Sign In to Drive 
                <i class="bi bi-arrow-right text-dark"></i></h2>
               </a>
               </div>
               <div class="col" id="col2"> 
                    <a href="customer.aspx"><h2 id="link1">Sign In to Ride
                <i class="bi bi-arrow-right"></i></h2>
                </a>
               </div>

           </div> 

        </div>







</body>
</html>

