<?php #selects the avatar as the user's avatar

session_start(); # start the session

if(isset($_GET['id']))
{
  $id = $_GET['id'];
  require('../../mysqli_connect.php'); #connect db

  #query
  $q = "SELECT avatarID AS Avatar FROM users
  WHERE userID = $_SESSION[user_id]";

  $r = @mysqli_query($dbc,$q); #run query

  $num = mysqli_num_rows($r);

  if($num == 1) #match made
  {
    $q = "UPDATE users SET avatarID=$id WHERE userID=$_SESSION[user_id]";

    $r = @mysqli_query($dbc,$q); #run query

    if(mysqli_affected_rows($dbc) == 1) #query ran ok
    {
      echo '<h1>Avatar Updated!</h1><br/>';
    }
    else #query failed
		{
			#public message
			echo '<h1>System Error</h1>
			<p class="error">You could not be registered due to a system error. We appologise for the inconvenience.</p>';

			#debug message
			echo '<p>' . mysqli_error($dbc) . '<br/><br/>Query: ' . $q . '</p>';
		}

		mysqli_close($dbc); #close database
  }
  else
  {
    #echo 'list not made';
  }
}
header('Location: ../../loggedin.php');
?>
