<?php # Login process
# page processes login form submission
# if successful user is redirected

if ($_SERVER['REQUEST_METHOD'] == 'POST') # check if form has been submitted
{
  require './includes/login_functions.php'; # for processing login
  require './mysqli_connect.php'; # for database connection

  list($check, $data) = check_login($dbc, $_POST['email'], $_POST['pass']);

  if ($check) # successful
  {
    session_start();
    $_SESSION['user_id'] = $data['userID'];
    $_SESSION['user_name'] = $data['userName'];

    $_SESSION['agent'] = $_SERVER['HTTP_USER_AGENT']; # store HTTP_USER_AGENT

    redirect_user('loggedin.php'); # redirect
  }
  else # unsuccessful
  {
    $errors = $data;
  }

  mysqli_close($dbc); # close the connection
}

# create the page
include './includes/login_page.php';
?>
