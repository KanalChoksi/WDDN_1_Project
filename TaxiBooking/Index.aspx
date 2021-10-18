<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" MasterPageFile="Index.Master" Inherits="TaxiBooking.Index" %>

    <asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Home Page</title>
 
    <style type="text/css">  

      #abt1{
          background-color:gainsboro;
      }
      #abt2{
          background-color:aliceblue;
      }
      *{
          margin:0;
          padding:0;
      }
      #map{
          height: 500px;
          width:100%;
      }
      .container1 a:hover{
          background-color:black;
      }
    
    </style>  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    
                  
  

    <%-- Ride Button--%>


    <section class="bg-dark text-light p-5 text-center text-sm-start">
        <div class="container">
            <div class="d-sm-flex align-items-center justify-content-between">
                <div>
                    <h1>Become a <span class="text-warning">TaxiCab Customer</span></h1>
                    <p class="lead my-4">We provide you safe drive We have ensured every covid protocols Choose TaxiCab and make youe journey Memorable</p>
                    <a href="ride.aspx" class="btn btn-secondary" style="position: absolute">Choose A Ride</a>
                </div>
                <img class="img-fluid w-50 d-none d-sm-block" src="image\image4.jpg" alt="">
            </div>
        </div>
    </section>
    <%-- About Us --%>

    <div id="about">
    <section class="p-5" id="abt1">
        <div class="row m-3 mb-0">
            <div class="col">
                <img src="image\image2.jpg" class="img-fluid"/>
            </div>
            <div class="col p-5">
                <h2>TaxiCab Rental</h2>
                <p class="lead">
                    Rent our taxies with affordable prices for your vacations
                </p>
                <a href="#" class="btn btn-light mt-3">Read More
                    <i class="bi bi-chevron-right text-dark"></i>
                </a>
            </div>
        </div>
    </section>


     <section class="p-5" id="abt2">
        <div class="row m-3 mt-0">
            <div class="col p-5">
                <h2>
                    Intercity Rides
                </h2>
                <p class="lead">
                    Book our cab for Intercity Rides
                </p>
                <a href="#" class="btn btn-light mt-3">Read More
                    <i class="bi bi-chevron-right text-dark"></i>
                </a>
            </div>
             <div class="col">
                <img src="image\image1.jpg" class="img-fluid"/>
            </div>
        </div>
         
    </section>

        </div>


    <%-- Frequently asked questions --%>

  <section class="p-5" id="questions">
        <div class="container">
            <h2 class="text-center mb-4">Frequently Asked Questions</h2>
            <div class="accordion accordion-flush">
                <!-- Item 1 -->
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#question-one">
                            How to choose ride?
                        </button>
                    </h2>
                    <div id="question-one" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"
                        data-bs-parent="questions">
                        <div class="accordion-body">
                            Press Choose Ride Button then enter your location and destination it will redirect you to payment and after some time taxi will be at your home
                        </div>
    
                    </div>
                </div>
                <!-- Item 2 -->
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#question-two">
                            How can I Pay?
                        </button>
                    </h2>
                    <div id="question-two" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"
                        data-bs-parent="questions">
                        <div class="accordion-body">
                            You can pay through Debit Card, Paytm, G-pay
                        </div>
    
                    </div>
                </div>
                <!-- Item 3 -->
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#question-three">
                            How do I Login?
                        </button>
                    </h2>
                    <div id="question-three" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"
                        data-bs-parent="questions">
                        <div class="accordion-body">
                            You can login via login page and if you don't have an account first create your account and then login.
                        </div>
    
                    </div>
                </div>


             

            </div>
        </div>    
    </section>


       
    <script>
        

        function initMap() {

            // Simple map
            var map = new google.maps.Map(document.getElementById("map"), {
                center: { lat: 22.3072, lng: 73.1812 },
                zoom: 8,
            });

            //marker
            addMarker({ lat: 22.3072, lng: 73.1812 });

            function addMarker(coords) {
                var marker = new google.maps.Marker({
                    position: coords ,
                    map: map
                });
            }
            https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,
            +Mountain + View, +CA & key=YOUR_API_KEY
            $.ajax({
                url='https://maps.googleapis.com/maps/api/geocode/json?latlng=22.3032,73.1818?key=',
                success: function (result) {
                    console.log(result);
                }
            })
        }
    </script>
   
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBR_mVSM2BM9APBNgXgAEweNOS7xcc-V6c&callback=initMap"></script>

    

</body>
</html>
</asp:Content>
 