<?php
session_start();
session_destroy();
$url = 'http://localhost/OnlineFood-PHP/index.php';
header('Location: ' . $url);

?>