<?php 
session_start(); 
if (isset($_SESSION['loginstatus'])) { 
  $_SESSION = array(); 

  session_destroy(); 
} 
header('location:login.php');
exit;
?> 