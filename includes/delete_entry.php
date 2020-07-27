<?php #deletes selected record
require('../mysqli_connect.php'); #connect db

$id = $_GET['id'] ?? null;

if(!$id)
{
  exit();
}
$q = "  SELECT lists.listID FROM lists INNER JOIN entry WHERE lists.listID=entry.listID AND entryID=$id";
$r = @mysqli_query($dbc,$q); #run query
$num = mysqli_num_rows($r);
if($num == 1) #origin match made
{
  $row = mysqli_fetch_array($r, MYSQLI_ASSOC);
  $originID = $row['listID'];
}

$q = "DELETE FROM entry WHERE entryID = $id";
$r = @mysqli_query($dbc,$q); #run query
$num = mysqli_num_rows($r);

if(mysqli_affected_rows($dbc) == 0) #query failed
{
  echo mysqli_error($dbc);
  exit();
}

header('Location: ./edit_list.php?id=' . $originID);
