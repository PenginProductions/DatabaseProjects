	<fieldset>
		<legend>Edit List</legend>
		<form action="" method="post">
			<input
				name="list_name"
				type="text"
				placeholder="Enter list's name"
				value="<?php if(isset($_POST['list_name'])) echo $_POST['list_name'];
										elseif(isset($list)) echo $list['Name'];?>">
			<input
				name="entry_name"
				type="text"
				placeholder="Add an entry"
				value="<?php if(isset($_POST['entry_name'])) echo $_POST['entry_name'];?>">
			<input
				type="number"
				name="cost"
				placeholder="Type or Select cost"
				value="<?php if(isset($_POST['cost'])) echo $_POST['cost'];?>">
			<input
				type="text"
				name="notes"
				placeholder="Add details about entry"
				value="<?php if(isset($_POST['notes'])) echo $_POST['notes'];?>">
			<button
				type="submit">Submit
			</button>
		</form>
	</fieldset>
<table>
