<?php
session_start();
session_destroy();
$url = 'D:\xampp\htdocs\OnlineFood-PHP\indexowner.php';
header('Location: ' . $url);

?>