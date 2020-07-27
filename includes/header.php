<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" media="screen" href="./style.css">
	<link rel="stylesheet" media="screen" href="../style.css">
	<link rel="stylesheet" media="screen" href="../../style.css">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title><?php echo $page_title; ?></title>
</head>
<body>
<ul class="nav">
	<li><?php
	#ini_set('display_errors', 0);
	 if ((isset($_SESSION['user_id'])) && (basename($_SERVER['PHP_SELF']) != 'logout.php') && (basename($_SERVER['PHP_SELF']) != 'edit_list.php'))
						{
							$db = new mysqli('localhost','root','','ListBuilderDB');
							$q = "SELECT u.avatarID AS id, i.fileName AS fileName from users AS u INNER JOIN images AS i WHERE u.avatarID=i.avatarID AND u.userID=$_SESSION[user_id]";
							$imgs = $db->query($q);

							if(basename($_SERVER['PHP_SELF']) == 'loggedin.php')
							{
								echo '<a href="change_password.php">Change Password</a>   ';
								echo '<a href="logout.php">Logout</a><br/><br/>';
								foreach ($imgs as $img):?>
									<a href="http://<?=$_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF'])?>/includes/avatar/avatar.php"><img src="http://<?=$_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF'])?>/includes/avatar/get-image.php?id=<?=$img['id']?>"/></a>
								<?php endforeach;
							}
							elseif(basename($_SERVER['PHP_SELF']) == 'change_password.php')
							{
								echo '<a href="./loggedin.php">Go Back</a><br/><br/>';
								foreach ($imgs as $img):?>
									<a href="http://<?=$_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF'])?>/includes/avatar/avatar.php"><img src="http://<?=$_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF'])?>/includes/avatar/get-image.php?id=<?=$img['id']?>"/></a>
								<?php endforeach;
							}
							elseif(basename($_SERVER['PHP_SELF']) == 'print_list.php')
							{
								echo '<a href="../loggedin.php">Go Back</a><br/><br/>';
							}
						}
						elseif(basename($_SERVER['PHP_SELF']) == 'avatar.php')
						{
							echo '<a href="../../loggedin.php">Go Back</a><br/><br/>';
						}
						elseif((basename($_SERVER['PHP_SELF']) != 'login.php' && basename($_SERVER['PHP_SELF']) != 'edit_list.php'))
						{
							echo '<a href="login.php">Login</a>';
						}
			?></li>
</ul>
