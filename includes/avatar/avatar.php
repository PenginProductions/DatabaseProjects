<?php
$page_title = "Avatar Selection";
$db = new mysqli('localhost','root','','ListBuilderDB');
$imgs = $db->query('select * from images');
include '../header.php';
?>
	<h1>Choose An Avatar</h1>
	<form action="upload.php" method="post" enctype="multipart/form-data">
		<input type="file" name="upload"/>
		<!-- <input type="file" name="upload-two"/> -->
		<button type="submit">Upload</button>
	</form>

	<div class="images">
		<?php if ($imgs): ?>
			<?php foreach ($imgs as $img): ?>
				<a href="./selection.php?id=<?=$img['avatarID']?>"><img class="avatar" src="get-image.php?id=<?=$img['avatarID']?>" alt="<?=$img['fileName']?>" /></a>
			<?php endforeach;?>
		<?php endif;?>
	</div>
<div class="foot">
<?php include '../footer.html';?>
</div>
