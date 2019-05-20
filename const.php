<?php 
define("APP_URL", $_SERVER['DOCUMENT_ROOT'].'/lean/learn/App/Views/Utils/classes_loader.php');
define("ROOT_URL", $_SERVER['DOCUMENT_ROOT'].'/lean/');
define("VIEWS", ROOT_URL."App/Views/");
define("UTILS", VIEWS."Utils/");
define("HEADER",UTILS."header.php");
define("STYLES",UTILS."styles.php");
define("SCRIPT",UTILS."script.php");
define("APP", ROOT_URL.'App/');
define("REGISTER", VIEWS."Register/");
define("STUDENT_REG", REGISTER.'/student_reg.php');
require APP_URL;
?>