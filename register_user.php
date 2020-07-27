<?php #form for adding new user to site
#also handles form
$page_title = 'Register';
include './includes/header.php';

if($_SERVER['REQUEST_METHOD'] === 'POST')
{
	require './mysqli_connect.php'; # database connection
	$errors = []; # error array

	if (empty($_POST['email']))   # validate email
	{
		$errors[] = 'You forgot to enter your email address.';
	}
	else
	{
		$e = mysqli_real_escape_string($dbc, trim($_POST['email']));
	}

	if (empty($_POST['pass1'])) # validate password
	{
		$errors[] = 'You forgot to enter your password.';
	}
	else
	{
		$p1 = mysqli_real_escape_string($dbc, trim($_POST['pass1']));
	}

	if (empty($_POST['pass2'])) # validate password2
	{
		$errors[] = 'You forgot to confirm your password.';
	}
	else
	{
		$p2 = mysqli_real_escape_string($dbc, trim($_POST['pass2']));
	}
	if ($_POST['pass1'] != $_POST['pass2']) # invalid passwords
	{
		$errors[] = 'Your password does not match your confirmed password.';
	}

	if (empty($errors)) # if ok
	{
		# get user_id and first_name for email/pass combo
		$q = "SELECT userName, pass FROM users WHERE userName='$e' AND pass='$p1'";
		$r = @mysqli_query($dbc, $q); # run query
		$num = @mysqli_num_rows($r);

		if ($num == 1) # match made
		{
			echo '<h1>Account Creation Error!</h1>
			<p>Your account has already been created.<br/><br/><p>Please return to the login page to access your account.</p>';
		}
		else #query failed
		{
			$ep = password_hash($p1, PASSWORD_BCRYPT);
			$q = "INSERT INTO users (userName, pass, `hash`, avatarID) VALUES ('$e', '$p1', '$ep', 1)";
			$r = @mysqli_query($dbc, $q); # run query
			$num = @mysqli_num_rows($r);

			if (mysqli_affected_rows($dbc)) # check result
			{
				echo '<h1>Thank You!</h1>
				<p>Your account has been created.<br/><br/>';

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
}?>

	<fieldset>
		<legend>Register New User</legend>
		<form action="" method="post">
			<input
				name="email"
				type="email"
				placeholder="Enter your email address"
				value="<?php if(isset($_POST['email'])) echo $_POST['email'];?>">
			<input
				name="pass1"
				type="password"
				placeholder="Enter a password"
				value="<?php if(isset($_POST['pass1'])) echo $_POST['pass1'];?>">
			<input
				name="pass2"
				type="password"
				placeholder="Confirm your password"
				value="<?php if(isset($_POST['pass2'])) echo $_POST['pass2'];?>">
			<button
				type="submit">Submit
			</button>
		</form>
	</fieldset>
<table>
