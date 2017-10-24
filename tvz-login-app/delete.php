<?php
require_once 'head.php';
if(!isset($_GET['id'])) {
  die('ne postoji parametar id');
}

$id = (int)$_GET['id'];
$logiraniId = (int)$_SESSION['user']['id'];

if($id === $logiraniId) {
    die('ne mozete sami sebe obrisati (idiot)');
}

$sql = 'DELETE FROM users WHERE id = :id';
$stmt = $db->prepare($sql);
$stmt->bindParam(':id', $id);
$stmt->execute();

header('Location: home.php');
die();
