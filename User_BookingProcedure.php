<?php
session_start();
if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
	header("location:ambulance_home.php");
	exit;
}
$_SESSION['mobile'];
?>
<html>
<head>

<title>Booking Procedure</title>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>  

  <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=places&key=AIzaSyDyQXoVJIBcwn4D2mQhQ4P9ioZ7uDDG4ug">  </script>

  <!--EXTERNAL CSS-->
  <link rel="stylesheet" href="userStyle.css">
  <!--EXTERNAL CSS-->
  <style>
  a{
	color:red;
}
  </style>
</head>
<body>

<?php if(isset($_SESSION['status'])== true){ ?>
<!--Success message to be displayed-->
<div class='alert alert-success alert-dismissible fade-show' role='alert'>
    <strong>Successfully Logged in! </strong> 
    <button type='button' class='close' data-dismiss='alert' aria-label='close'>
    <span aria-hidden='true'>&times;</span>
    </button>
</div>
<!--Success message to be displayed-->
<?php
}
?>



<!-- header -->
<header class="w3-container w3-theme" id="myHeader">
    <!-- Logo -->
    <img src="logoheart.png" alt="logo" class="w3-left" width="7%" height="12%">
		<br>
		<h3>&nbsp;Sevarohi</h3>
    <!-- Logo -->
  
<!--Title: Booking Procedure -->
<h1 class="w3-center">Booking Procedure <i class="fa fa-ambulance"></i></h1>
<!--Title: Booking Procedure -->
<h4 style="color:#fc4c4c; padding-top:2%" class="w3-right">
     
</h4><br>
<br>

  <!-- navigation bar -->
  <div> 
    <ul class="nav nav-tabs">
      <li class="active"><a href="#myHeader">Booking Procedure</a></li>
      <li><a href="hospitals.php">Hospitals</a></li>
	  <li><a href="nursingHomes.php">Private Nursing Homes</a></li>
	  <li><a href="userHistory.php">Your History</a></li>
      <li><a href="ambulance_home.php">Logout</a></li>
    </ul>
  </div>
  <!-- navigation bar -->
  
  
  </header>
  <!-- header--> 
  

  <div><!--CONTAINER-->
    <div class="row"> <!--ROW-->
  
    <!--COLUMN 1-->
      <div class="col" style="padding-left:2%; padding-top:2%"> <!--COLUMN 1-->
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d241317.1160984904!2d72.741099723027!3d19.082197839405396!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c6306644edc1%3A0x5da4ed8f8d648c69!2sMumbai%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1643296253820!5m2!1sen!2sin" width="100%" height="85%" style="border:0;">
          </iframe>
      </div><!--COLUMN 1-->
      
    
      <!-- COLUMN 2-->
      <div class="col" style="padding:2%; background-color:#ab0306">	  r
        <!--form -->
        <form class="form-group" action="bookingAction.php" method="post">
			
          <!--OPTION 1: pickup location to be enter by the user-->
		  <div class="w3-right">
          <!-- <i> <label name="mobile" style="color:white">User Name: -->
			<?php // echo $_SESSION['name']; ?> <!--</label> <br>-->
		<label name="mobile" style="color:white"> Your mobile number:- <?php echo $_SESSION['mobile']; ?></label>
			</i>
		</div>
			<br><br><br>
			<label style="color:white; font-size:medium">Pick-Up From...</label>
<input type="text" name="pickup" placeholder="Enter pick-up point" id="pickup" required>
<div id="autoFillCheckbox" style="margin-top: 10px; cursor: pointer; color: white;">
    <input type="checkbox" id="autoFillCheckboxInput"> Auto-fill with current location
</div>

<script type="text/javascript">
    var searchInput = 'pickup';
    var autoFillCheckboxInput = document.getElementById('autoFillCheckboxInput');

    document.addEventListener('DOMContentLoaded', function() {
        var pickupInput = document.getElementById(searchInput);

        autoFillCheckboxInput.addEventListener('change', function() {
            if (this.checked) {
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(function(position) {
                        var latitude = position.coords.latitude;
                        var longitude = position.coords.longitude;

                        // You can use the obtained latitude and longitude to reverse geocode and get an address
                        // For simplicity, this example directly sets the input value to the coordinates
                        pickupInput.value = 'Current Location: ' + latitude + ', ' + longitude;
                    }, function(error) {
                        console.error('Error getting current location:', error);
                    });
                }
            } else {
                // Clear the input field if the checkbox is unchecked
                pickupInput.value = '';
                resetMap();
            }
        });
    });
</script>


              
            <!-- destination to be entered by user - COMPULSION -->
            <!-- Select City or Place -->
            
<!-- Select City or Place -->
<!-- Select City or Place -->

<!-- Select City or Place -->
<!-- Larger Dropdown Field with Label for Cities -->
<div style="margin-top: 10px;">
    <label style="color:white; font-size:medium">Select City or Place</label>
    <div class="custom-dropdown">
        <select id="citySelect" onchange="loadHospitals()">
            <option value="Bhayandar">Bhayandar</option>
            <option value="MiraRoad">Mira Road</option>
            <option value="Andheri">Andheri</option>
            <option value="VileParle">Vile Parle</option>
            <option value="Santacruz">Santacruz</option>
            <!-- Add more options as needed -->
        </select>
    </div>
</div>

<!-- Larger Dropdown Field with Label for Hospitals -->
<div style="margin-top: 10px;">
    <label style="color:white; font-size:medium">Destination</label>
    <div class="custom-dropdown">
        <select name="dropoff" id="dropoff" required>
            <option value="">Select Hospital</option>
            <!-- Options will be dynamically populated using JavaScript -->
        </select>
    </div>
</div>

<br>

<script>
// Define a mapping of cities to hospitals
var hospitalData = {
    Bhayandar: ['Padmaja Hospital and ICU', 'Shree Siddhivinayak Hospital', 'Bhayandar Criticare Hospita', 'Shree Kkasturi Medicare'],
    MiraRoad : ['Thunga Hospital', 'Galaxy Hospital', 'Bhaktivedanta Hospital'],
    Andheri: ['Paramount General Hospital', 'Chiranjeevi Hospital', 'Aaradhya Health Care Super Speciality Hospital', 'Umang Maternity & Surgical Nursing Home'],
    VileParle: ['Shirodkar Hospital', 'KLS Memorial Hospital', 'Advanced Multispeciality Hospital', 'Nanavati Max Super Speciality Hospital'],
    Santacruz: ['Wellcare Hospital Kalina', 'Sai Sanjeevani Hospital', 'Sarla Hospital & ICU', 'Life Line Hospital & Diagnostic centre'],
    // Add more cities and hospitals as needed
};

function loadHospitals() {
    // Get the selected city or place
    var selectedCity = document.getElementById('citySelect').value;

    // Get the hospitals for the selected city from the mapping
    var hospitals = hospitalData[selectedCity];

    // Update the dropdown options
    updateHospitalDropdown(hospitals);
}

function updateHospitalDropdown(hospitals) {
    var dropdown = document.getElementById('dropoff');

    // Clear existing options
    dropdown.innerHTML = '';

    // Add a default option
    var defaultOption = document.createElement('option');
    defaultOption.value = '';
    defaultOption.text = 'Select Hospital';
    dropdown.add(defaultOption);

    // Add new options based on the fetched hospitals
    hospitals.forEach(function(hospital) {
        var option = document.createElement('option');
        option.value = hospital;
        option.text = hospital;
        dropdown.add(option);
    });
}
</script>

<style>
/* Styling for the custom dropdown */
.custom-dropdown {
    position: relative;
    display: inline-block;
    width: 100%;
}

.custom-dropdown select {
    width: 100%;
    padding: 10px;
    font-size: medium;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}
</style>


             
            <!--OPTION 2: Track user's location automatically
            <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get Location Example</title>
</head>
<body>

<div class="w3-center w3-padding" style="background-color: #dee2e3;">
    <b> OR </b>  <br>
    <p>Click the button below to track your current location</p>
    <button onclick="getLocation()" style="font-size:medium">Get Location</button>
</div>-->

            <!-- Proceed with booking Button-->
            <button type="submit" name="confirmBooking" id="confirmBooking" 
					value="submit" style="width:25%; background-color:black">
                    Confirm Booking
      </button>
			<!-- Proceed with booking Button-->
          
              <script>
                  var x = document.getElementById("demo");  
                  function getLocation() {
                    if (navigator.geolocation) {
                      navigator.geolocation.getCurrentPosition(showPosition);
                    } 
                    else { 
                      x.innerHTML = "Geolocation is not supported by this browser.";
                    }
                  }
                  function showPosition(position) {
                    x.innerHTML = "Latitude: " + position.coords.latitude + 
                    "<br>Longitude: " + position.coords.longitude;
                  }
              </script>
            </div>
        </form> <!--form-->
      </div><!-- COLUMN 2-->
  
    </div> <!-- ROW -->
  </div> <!-- CONTAINER -->


<script>
var searchpick = 'pickup';
var searchdrop = 'dropoff';
$(document).ready(function () {
 var autocomplete1;
 var autocomplete2;
 autocomplete1 = new google.maps.places.Autocomplete((document.getElementById(searchpick)), {
  types: ['geocode'],
  /*componentRestrictions: {
   country: "India"
  }*/
 });
 
 autocomplete2 = new google.maps.places.Autocomplete((document.getElementById(searchdrop)), {
  types: ['geocode'],
  /*componentRestrictions: {
   country: "India"
  }*/
 });


 google.maps.event.addListener(autocomplete, 'place_changed', function () {
  var near_place = autocomplete.getPlace();
 });
});
</script>



<?php include('footer.php'); ?>  
</body>
</html>