<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" MasterPageFile="Index.Master" Inherits="TaxiBooking.Index" %>

    <asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Home Page</title>
 
    <style type="text/css">  
      #canvasMap {  
        height: 100%;  
        margin-top: 10px;  
        padding: 0px;
      }  
      #abt1{
          background-color:gainsboro;
      }
      #abt2{
          background-color:aliceblue;
      }
    </style>  
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>  
    <script type="text/javascript">  
        var map;  
        function LoadGoogleMAP() {  
            var SetmapOptions = {  
                zoom: 10,  
                center: new google.maps.LatLng(-34.397, 150.644)  
            };  
            map = new google.maps.Map(document.getElementById('canvasMap'),  
      SetmapOptions);  
        }  
  
        google.maps.event.addDomListener(window, 'load', LoadGoogleMAP);  
  
    </script>  
</head>
<body>

                  
    <%--<div id="canvasMap"> </div>--%> 


    <%-- About Us --%>


    <section class="p-5" id="abt1">
        <div class="row m-3 mb-0">
            <div class="col">
                <img src="Images\image2.jpg" class="img-fluid"/>
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
                <img src="Images\image1.jpg" class="img-fluid"/>
            </div>
        </div>
         
    </section>

       

</body>
</html>
</asp:Content>
 