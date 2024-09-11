<?php
session_start();
session_destroy();
$url = 'http://localhost/OnlineFood-PHP/indexowner.php';
header('Location: ' . $url);

?>