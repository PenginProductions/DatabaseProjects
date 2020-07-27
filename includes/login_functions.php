<?php # Common functions for log-in/out
# 2 common functions in login/logout processs

# Function determines absolute URL and redirects user there
function redirect_user($page = 'index.php')
{
  # URL is http:// + host name + current directory
  $url = 'http://' . $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']);
  $url = rtrim($url, '/\\'); # Remove trailing slashes
  $url .= '/' . $page; # Add page to URL

  header("Location: $url"); # Redirect user
  exit(); # Quit the script.

} # END OF redirect_user

# function validates form data; returns array of information including:
# T/F for success, array of errors or database result
function check_login($dbc, $email = '', $pass = '')
{
  require './mysqli_connect.php'; # database connection

  $errors = []; # error array

  if (empty($email))   # validate email
  {
    $errors[] = 'You forgot to enter your email address.';
  }
  else
  {
    $e = mysqli_real_escape_string($dbc, trim($email));
  }

  if (empty($pass)) # validate password
  {
    $errors[] = 'You forgot to enter your password.';
  }
  else
  {
    $p = mysqli_real_escape_string($dbc, trim($pass));
  }

  if (empty($errors)) # if ok
  {
    # get user_id and first_name for email/pass combo
    $q = "SELECT userID, userName, pass, `hash` FROM users WHERE userName='$e' AND pass='$p'";
    $r = @mysqli_query($dbc, $q); # run query
    $num = @mysqli_num_rows($r);
    if ($num == 1) # check result
    {
      $row = mysqli_fetch_array($r, MYSQLI_ASSOC); # fetch record
      if (password_verify($p, $row['hash']))
      {
      #  echo 'Password is valid!';
        return [true, $row]; # return true + record
      }
      else
      {
      #  echo 'Invalid password.';
        $errors[] = 'The email address and password entered do not match those on file.';
      }
      mysqli_close($dbc); # close the connection
    }
    else # not a match
    {
      $errors[] = 'The email address and password entered do not match those on file.';
      mysqli_close($dbc); # close the connection
    }
  }
  return [false, $errors]; # if function reaches end return false and errors
} # END OF check_login
