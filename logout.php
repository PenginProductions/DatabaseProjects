<?php # Lets user logout

session_start(); # Access existing session

# If no session; redirect user
if (!isset($_SESSION['user_id']))
{
  require './includes/login_functions.php';
  redirect_user('login.php');
}
else # Delete the session
{
  $_SESSION = []; # Clear the variables
  session_destroy(); # destroy session
  setcookie(session_name(), '', time()-3600, '/', '', 0, 0); # destroy session cookie
}

$page_title = 'Logged Out!';
include './includes/header.php';

echo "<h1>Logged Out!</h1>
<p>You are now logged out!</p>";

include './includes/footer.html';
?>
