<?php
function handleListSubmit() : void
{
	require('./mysqli_connect.php'); #connect db
	$errors = []; #Error array

	#Check for dog_name
	if(empty($_POST['list_name']))
	{
		$errors[] = 'You forgot to enter your list\'s name.';
	}
	else
	{
		$ln = mysqli_real_escape_string($dbc, trim($_POST['list_name']));
	}

	if(empty($errors)) #when everything is ok
	{
	#register user to database
	#query
		if(isset($_GET['id']))
		{
			$id = $_GET['id'];
			$q = "UPDATE lists SET listName='$ln' WHERE listID=$id AND userID=$_SESSION[user_id]";
		}
		else
		{
			$q = "INSERT INTO lists (listName, userID) VALUES
			('$ln', $_SESSION[user_id])";
		}

		$r = @mysqli_query($dbc, $q); #run query
		$num = @mysqli_num_rows($r);

		if(mysqli_affected_rows($dbc) == 1) #query ran ok
		{
			#echo '<h1>List added!</h1><br/>';
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
}

function handleEntrySubmit() : void
{
	require('../mysqli_connect.php'); #connect db
	$errors = []; #Error array


	#Check for list name
	if(empty($_POST['list_name']))
	{
		$errors[] = 'You forgot to enter your list\'s name.';
	}
	else
	{
		$ln = mysqli_real_escape_string($dbc, trim($_POST['list_name']));
	}
	#Check for entry name
	if(empty($_POST['entry_name']))
	{
		$errors[] = 'You forgot to enter your entry\'s name.';
	}
	else
	{
		$en = mysqli_real_escape_string($dbc, trim($_POST['entry_name']));
	}
	#Check for cost
	if(empty($_POST['cost']))
	{
		$errors[] = 'You forgot to enter your entry\'s cost.';
	}
	else
	{
		$c = mysqli_real_escape_string($dbc, trim($_POST['cost']));
	}
	#Check for notes
	if(empty($_POST['notes']))
	{
		$errors[] = 'You forgot to enter your entry\'s details.';
	}
	else
	{
		$n = mysqli_real_escape_string($dbc, trim($_POST['notes']));
	}

	if(empty($errors)) #when everything is ok
	{
	#register user to database
	#query
		if(isset($_GET['id']))
		{
			$id = $_GET['id'];
			$q1 = "SELECT listName, listID FROM lists WHERE listID=$id";
			$r =  @mysqli_query($dbc, $q1); #run query
			$num = @mysqli_num_rows($r);

			if($num == 1)#match made
			{
				$row = mysqli_fetch_array($r, MYSQLI_ASSOC);
				if(!($ln == $row['listName']))
				{
					$q3 = "UPDATE lists SET listName='$ln' WHERE listID=$id";
					$r =  @mysqli_query($dbc, $q3); #run query

					if(mysqli_affected_rows($dbc) == 1) #query ran ok
					{
						echo '<p>Your list\'s name has been updated.</p><br/>';
					}
					else #query failed
					{
						#public message
						echo '<h1>System Error</h1>
						<p class="error">Your list\'s name could not update. We appologise for the inconvenience.</p>';

						#debug message
						echo '<p>' . mysqli_error($dbc) . '<br/><br/>Query: ' . $q3 . '</p>';
					}
				}
			}
			$q = "INSERT INTO entry (entryName, cost, notes, listID) VALUES ('$en', $c, '$n', $id)";
			$r = @mysqli_query($dbc, $q); #run query
			$num = @mysqli_num_rows($r);

			if(mysqli_affected_rows($dbc) == 1) #query ran ok
			{
				echo '<p>Entry added.</p><br/>';
			}
			else #query failed
			{
				#public message
				echo '<h1>System Error</h1>
				<p class="error">Your entry could not be registered due to a system error. We appologise for the inconvenience.</p>';

				#debug message
				echo '<p>' . mysqli_error($dbc) . '<br/><br/>Query: ' . $q . '</p>';
			}
		}
		else
		{
			#public message
			echo '<h1>System Error</h1>
			<p class="error">Your list cannot be updated at this time. We appologise for the inconvenience. Please try again later.</p>';
		}

		mysqli_close($dbc); #close database
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
}

?>
