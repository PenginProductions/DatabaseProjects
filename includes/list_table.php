<?php
require('./mysqli_connect.php'); #connect db

#query
$q = "SELECT listID AS `id`, listName AS `Name`, lists.created AS `Created` FROM lists
INNER JOIN users ON lists.userID=users.userID AND lists.userID=$_SESSION[user_id]
ORDER BY lists.listID ASC;";

$r = @mysqli_query($dbc,$q); #run query

$num = mysqli_num_rows($r);

if($num > 0)
{
	 echo "<p>There are currently $num registered lists.</p>\n";

	 echo '<table width="60%">
	 <thead>
	 <tr>
	   <th align="left">Name</th>
     <th align="left">Created</th>
	 </tr>
	 </thead>
	 <tbody>
	 ';

	 #fetch and print records
	 while($row = mysqli_fetch_array($r, MYSQLI_ASSOC))
	 {
	   echo '<tr><td align="left">' . $row['Name'] . '</td>
		 <td align="left">' . $row['Created'] . '</td>
		 <td>
		 	<a href="./includes/edit_list.php?id=' . $row['id'] . '">Edit</a>
			<a onclick="return confirm(\'Are you sure?\')"
				href="./includes/delete_list.php?id=' . $row['id'] . '">Delete</a>
			</td></tr>';
	 }

	 echo '</tbody></table>'; #close table

	 mysqli_free_result($r); #free up resources
}
else
{
	 echo '<p class="error">There are currently no registered lists.</p>';

	 #echo '<p>' . mysqli_error($dbc) . '<br/><br/>Query: ' . $q . '</p>';
}

mysqli_close($dbc); #close db connection
