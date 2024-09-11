<?php
session_start();
session_destroy();
$url = 'D:\xampp\htdocs\OnlineFood-PHP\index.php';
header('Location: ' . $url);

?>