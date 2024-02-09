<?php
// Get the patient's mobile number from the session
$patientMobile = $_SESSION['mobile'];

// Get the driver's mobile number from the session
$driverMobile = $_SESSION['dmobile'];

// Form the WhatsApp message
$message = "Hi, this is the driver. I'll be arriving shortly. Please be ready for pickup.";

// Form the WhatsApp Click to Chat URL
$whatsappURL = "https://wa.me/{$patientMobile}?text=" . urlencode($message);

// Redirect to the WhatsApp Click to Chat URL
header("Location: $whatsappURL");
exit();
?>
