<?php 
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if((!isset($_SESSION['user_id']) OR !empty($_SESSION['user_id'])) && !isset($_SESSION['user_names']) && !isset($_SESSION['user_type'])){
	header("Location: login");
}
?>