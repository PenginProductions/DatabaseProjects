<?php # user redirected here from login.php

session_start(); # start the session

# If no session; redirect user
if (!isset($_SESSION['agent']) OR ($_SESSION['agent'] != $_SERVER['HTTP_USER_AGENT']))
{
  require './includes/login_functions.php'; # need functions
  redirect_user('login.php');
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') # check if form has been submitted
{
  require './includes/functions.php'; # for processing lists
  handleListSubmit();
}

$page_title = 'Logged In!';
include './includes/header.php';
echo "<h1>Welcome!</h1>
<p>You are now logged in as {$_SESSION['user_name']}!</p>";
#<p><a href=\"logout.php\">Logout</a></p>";
echo "<h2>Registered Lists</h2>";
include './includes/list_table.php';
echo "<h2>Create New Lists</h2>";
include './includes/list_form.php';
echo "<br/><br/>";
include './includes/footer.html';
?>
