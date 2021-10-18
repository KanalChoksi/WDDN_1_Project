<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ride.aspx.cs" Inherits="TaxiBooking.ride" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         #map{
          height:690px;
          width:100%;
         position:absolute;
         }
         #id{
             margin:200px 100px;
             width: 30%;
             height: 300px;
             padding : 10px;
             box-shadow: 0px 0px 8px 5px rgba(0, 0, 0, .4);
             position:absolute;
             background-color:white;
         }
         #TextBox1,#TextBox2{
             border-radius:0%;
         }
    </style>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
</head>
<body>
    
    <%-- Navigation --%>


     <div>
        <nav class="navbar navbar-expand-lg bg-dark navbar-dark pt-3" id="nav">
            <div class="container">



                <a href="Index.aspx" class="navbar-brand">Taxi Cab</a>



                 <asp:Label runat="server" Text="" id="label" class="text-white"/>

            </div>
        </nav>
    </div>


     <div id="map"></div>
        <div id="id">
       <form id="form1" runat="server">
           
        <div class="container">
            <div class="d-flex ">
     <h1 class="p-2 w-100">Ride a Taxi</h1>&nbsp;
                <i class="fa fa-car p-2" style="font-size:28px;"></i>
            </div>
            
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
   
   <div class="form-group">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Pick Up" class="form-control"></asp:TextBox>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Destination" class="form-control"></asp:TextBox>
                <br />
                <asp:Label runat="server" id="duration"/>
                <asp:Label runat="server" id="distance"/>
                <asp:Button ID="Button1" runat="server" Text="Book Now" OnClick="Button1_Click" class="btn btn-dark"/><br />
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            </div>
            
         </div>
 
        
    </form>
    </div>

  
        <script>

           
            function initMap() {

                // Simple map
                var map = new google.maps.Map(document.getElementById("map"), {
                    center: { lat: 22.3072, lng: 73.1812 },
                    zoom: 8,
                });

                //marker
                addMarker({ lat: 22.3072, lng: 73.1812 });
                //addMarker({ lat: 23.0225, lng: 72.5714 });

                function addMarker(coords) {
                    var marker = new google.maps.Marker({
                        position: coords,
                        map: map
                    });
                }
                //var line = new google.maps.Polyline({ path: [{ lat: 22.3072, lng: 73.1812 }, { lat: 23.0225, lng: 72.5714 }], map: map });
            }
        
            

            //geocode for getting latitude and longitude
            
            //geocode();
            //function geocode() {
            //    var location = 'Vadodara';
            //    axios.get('  https://maps.googleapis.com/maps/api/geocode/json', {
            //        params: {
            //            address: location,
            //            key: 'AIzaSyA6csF90dqxtUO3if-hEeCakixLnXVxWLI'
            //        }
            //    })
            //        .then(function (response) {
            //           console.log(response);
            //           console.log(response.data.results[0].formatted_address);
            //        })
            //        .catch(function (error) {
            //           console.log(error);
            //        })
            //}
        
        </script>
   
   
    
     
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false&key=AIzaSyA6csF90dqxtUO3if-hEeCakixLnXVxWLI&libraries=places&&callback=initMap"></script>
   
    
    <%-- Auto Complete --%>
    <script>
        google.maps.event.addDomListener(window, 'load', function () {
            try {
                var input = document.getElementById('TextBox1');
                var autocomplete = new google.maps.places.Autocomplete(input);
                autocomplete.setTypes('changetype-geocode');
            }
            catch (err) {
                // alert(err);
            }
        });

        google.maps.event.addDomListener(window, 'load', function () {
            var input = document.getElementById('TextBox2');

            var autocomplete;
            autocomplete = new google.maps.places.Autocomplete(input);

            google.maps.event.addDomListener(autocomplete, 'place_changed', function () {
                var near_place = autocomplete.getPlace();
                //console.log("Place is : "+near_place);
                //var latitude = near_place.geometry.location.lat();
                //document.getElementById("label") = latitude;
                //document.getElementById("label1") = near_place;
            });
        });


    </script>
  
</body>
</html>
