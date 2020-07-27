<?php #allows user to edit list information
session_start(); # start the session
require "./functions.php" ;
$page_title = 'Edit List';
include "./header.php";

if($_SERVER['REQUEST_METHOD'] === 'POST')
{
  handleEntrySubmit();
}

if(isset($_GET['id']))
{
  $id = $_GET['id'];
  require('../mysqli_connect.php'); #connect db

  #query
  $q = "SELECT listName AS Name FROM lists
  WHERE listID = $id";

  $r = @mysqli_query($dbc,$q); #run query

  $num = mysqli_num_rows($r);

  if($num == 1) #match made
  {
    $list = mysqli_fetch_array($r, MYSQLI_ASSOC);
  }
  else {
    #echo 'list not made';
  }
}
?>
<nav>
  <a style="float:right;" href="../loggedin.php">Go Back</a>
</nav>
<?php
echo '<br/>';
include "./entry_form.php";
include "./entry_table.php";
echo '<br/>';
echo '<br/>';
echo '<br/>';
include "./footer.html";
?>
