	<fieldset>
		<legend>List Entry</legend>
		<form action="" method="post">
			<input
				name="list_name"
				type="text"
				placeholder="Enter list's name"
				value="<?php if(isset($_POST['list_name'])) echo $_POST['list_name'];
										elseif(isset($list)) echo $list['Name'];?>">
			<button
				type="submit">Submit
			</button>
		</form>
	</fieldset>
<table>
