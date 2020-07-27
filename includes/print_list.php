<?php #allows user to view a printable version of list information
session_start(); # start the session
#require "./functions.php" ;
$page_title = 'Printable List';
include "./header.php";

if(isset($_GET['id']))
{
  $id = $_GET['id'];
  if(isset($_SESSION['total_cost']))
  {
    $totalCost = $_SESSION['total_cost'];
  }
  else
  {
    echo "no cost";
  }
  #echo $id;
  require('../mysqli_connect.php'); #connect db

  #query
  $q = "SELECT l.listName AS Name, e.entryID AS eID, e.entryName AS Item, e.cost AS Cost, e.notes AS Notes FROM lists AS l
INNER JOIN entry AS e ON l.listID=e.listID
WHERE l.listID = $id";

  $r = @mysqli_query($dbc,$q); #run query
  $num = mysqli_num_rows($r);

  if($num > 0) #match made
  {
    $list = mysqli_fetch_array($r, MYSQLI_ASSOC);?>
    <h1><?=$list['Name']?></h1>
      <h2>Total Cost: <?=$totalCost?></h2>
      <br/>
      <br/>
      <?php #fetch and print records
      $r = @mysqli_query($dbc,$q); #run query
      while($list = mysqli_fetch_array($r, MYSQLI_ASSOC))
      {
        echo '<p>' . $list['Item'] . ' - ' . $list['Notes'] . ' - ' . $list['Cost'] . '</p><br/>';
      }
  }
  else {
    echo 'list not made';
  }
}
?>
