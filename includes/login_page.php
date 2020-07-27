<?php #Log-in page for website
# Page prints log-in errors
# Page creates entire page and form

$page_title = 'Login';
include './includes/header.php';

# print error messages
if(isset($errors) && !empty($errors))
{
  echo '<h1>Error!</h1>
  <p class="error">The following error(s) occurred:<br/>';
  foreach ($errors as $msg)
  {
    echo " - $msg<br/>\n";
  }
  echo '</p><p>Please try again.</p>';
}

# form
?>
<h1>Login</h1>
<form action="login.php" method="post">
  <p>Email Address: <input type="email" name="email" size="20" maxlength="60"> </p>
  <p>Password: <input type="password" name="pass" size="20" maxlength="20" </p>
  <p><input type="submit" name="submit" value="Login"> </p>
</form>

<h2>Not a member? No Problem! <a href='./register_user.php'>Register Here</a></h2>
<?php include './includes/footer.html'; ?>
