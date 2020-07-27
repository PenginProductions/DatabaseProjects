<?php
/**
 * proxy script that can pull image data by id and
 * echo to the browser
 */
$id = $_GET['id'] ?? null;

if (!$id) exit();

$db = new mysqli('localhost','root','','ListBuilderDB');
$stmt = $db->prepare('select * from images where avatarID = ?');
$stmt->bind_param('i', $id);

if (!$stmt->execute()) exit();

$result = $stmt->get_result();
$img = $result->fetch_object();

header('Content-Type: ' . $img->type);
echo $img->data;
