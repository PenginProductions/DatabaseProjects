<?php #deletes selected record
require('../mysqli_connect.php'); #connect db

$id = $_GET['id'] ?? null;

if(!$id)
{
  exit();
}

$q = "DELETE FROM lists WHERE listID = $id";
$r = @mysqli_query($dbc,$q); #run query
$num = mysqli_num_rows($r);

if(mysqli_affected_rows($dbc) == 0) #query failed
{
  echo mysqli_error($dbc);
  exit();
}

header('Location: ../loggedin.php');
