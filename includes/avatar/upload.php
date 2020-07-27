<?php
#var_dump($_FILES);

function handleUpload() : void {
	if (!isset($_FILES['upload'])) {
		return; // no file :(
	}

	$db = new mysqli('localhost','root','','ListBuilderDB');
	$file = $_FILES['upload'];

	$filename = $file['name'];
	$size = $file['size'];
	$type = $file['type'];
	$tmpPath = $file['tmp_name'];

	$allowedTypes = [
		'image/jpeg',
		'image/jpg',
		'image/png',
		'image/gif',
	];
	$finfo = new finfo(FILEINFO_MIME_TYPE);
	if (!in_array($finfo->file($tmpPath), $allowedTypes)) {
		echo '<p>File type not allowed! Type: ' . $finfo->file($tmpPath) . '</p>';
		return;
	}

	$stream = fopen($tmpPath, 'r');
	$data = fread($stream, $size);
	fclose($stream);

	$stmt = $db->prepare('INSERT images(fileName, type, data) values(?,?,?)');
	$stmt->bind_param('sss', $filename, $type, $data);

	if (!$stmt->execute()) {
		echo $stmt->error;
		return;
	}

	print '<p>file uploaded successfully</p>';
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	handleUpload();
}
header('Location: ./avatar.php');
?>
