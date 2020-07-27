<?php #lets user change password
session_start(); # start the session
$page_title = 'Change Your Password';
include('includes/header.php');

if($_SERVER['REQUEST_METHOD'] == 'POST')
{
  require('./mysqli_connect.php');

  $errors = [];

  if(!empty($_POST['pass1']))
  {
    if($_POST['pass1'] != $_POST['pass2'])
    {
      $errors[] = 'Your new password did not match the confirmed password.';
    }
    else
    {
      $np = mysqli_real_escape_string($dbc, trim($_POST['pass1']));
    }
  }
  else
  {
    $errors[] = 'You forgot to enter your new password.';
  }

  if(empty($errors))
  {
    #check the email/pass combo
    $q = "SELECT * FROM users WHERE (userName='$_SESSION[user_name]' AND userID=$_SESSION[user_id])";
    $r = @mysqli_query($dbc, $q);
    $num = @mysqli_num_rows($r);
    if($num == 1) #match made
    {
      $ep = password_hash($np, PASSWORD_BCRYPT);

      $q = "UPDATE users SET pass='$np', hash='$ep' WHERE (userName='$_SESSION[user_name]' AND userID=$_SESSION[user_id] )";
      $r = @mysqli_query($dbc, $q);

      if(mysqli_affected_rows($dbc) == 1) #ran ok
      {
        echo '<h1>Thank You!</h1>
        <p>Your password has been updated.<br/><br/>';
      }
      else
      {
        echo '<h1>System Error</h1>
        <p class="error">Your password could not be changed due to a system error.</p>';

        echo '<p>' . mysqli_error($dbc) . '<br/><br/>Query: ' . $q . '</p>';
      }

      mysqli_close($dbc);

      include('includes/footer.html');
      exit();
    }
    else #bad email/pass combo
    {
      echo '<h1>Error!</h1>
      <p class="error">The email address and password do not match those on file.</p>';
    }
  }
  else #report errors
  {
    echo '<h1>Error!</h1>
    <p class="error">The following error(s) occurred:<br/>';
    foreach($errors as $msg)
    {
      echo " - $msg<br/>\n";
    }
    echo '</p><p>Please try again.</p><br/>';
  }

  mysqli_close($dbc);
}
?>
<h1>Change Your Password</h1>
<form action="" method="post">
  <p>New Password: <input type="password" name="pass1" size="10" maxlength="20" value="<?php if(isset($_POST['pass1'])) echo $_POST['pass1']; ?>" > </p>
  <p>Confirm New Password: <input type="password" name="pass2" size="10" maxlength="20" value="<?php if(isset($_POST['pass2'])) echo $_POST['pass2']; ?>" > </p>
  <p><input type="submit" name="submit" value="Change Password"></p>
</form>
<?php include('includes/footer.html'); ?>
