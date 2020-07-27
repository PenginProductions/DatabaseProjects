<?php
require('../mysqli_connect.php'); #connect db

#query
$q = "SELECT entryID AS id, entryName AS Name, cost AS Cost, notes AS Notes FROM entry as e
 INNER JOIN lists AS l ON e.listID=l.listID WHERE l.listID=$id
 ORDER BY entryID ASC";

$r = @mysqli_query($dbc,$q); #run query

$num = mysqli_num_rows($r);
$totalCost = 0;
if($num > 0)
{
	 echo "<p>There are currently $num registered entries.</p>\n";

	 echo '<table width="60%">
	 <thead>
	 <tr>
	   <th align="left">Name</th>
		 <th align="left">Cost</th>
		 <th align="left">Description</th>
	 </tr>
	 </thead>
	 <tbody>
	 ';

	 #fetch and print records
	 while($row = mysqli_fetch_array($r, MYSQLI_ASSOC))
	 {
	   echo '<tr><td align="left">' . $row['Name'] . '</td>
		 <td align="left">' . $row['Cost'] . '</td>
		 <td align="left">' . $row['Notes'] . '</td>
		 <td>
			<a onclick="return confirm(\'Are you sure?\')"
				href="delete_entry.php?id=' . $row['id'] . '">Delete</a>
			</td></tr>';
      $totalCost += $row['Cost'];
	 }
   echo '<tr><th align="left">Total Cost</th><td align="left">' . $totalCost . '</td></tr>';
	 echo '</tbody></table>'; #close table
   echo '<br/>';
   echo '<br/>';
   $_SESSION['total_cost'] = $totalCost;
   echo '<form action="print_list.php?id=' . $id .'" method="post">
    <button
      type="submit">Print
    </button>
   </form>';
	 mysqli_free_result($r); #free up resources
}
else
{
	 echo '<p class="error">There are currently no registered entries.</p>';

	 #echo '<p>' . mysqli_error($dbc) . '<br/><br/>Query: ' . $q . '</p>';
}

mysqli_close($dbc); #close db connection
