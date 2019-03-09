<!DOCTYPE html>
<html>
<head>
	<title>Hızlı ve Kolay Resim Paylaşımı - resim yükle - resim paylaş - Hızlı Resim</title>
	<?php
	include("link.php"); 
	?>
</head>
<body style="overflow-x: hidden; overflow-y: scroll;">
	<?php
	 include("header.php");
	 $girileceksayfa = 'anasayfa';
	 if(isset($_GET['sayfa']))
	 	$girileceksayfa = $_GET['sayfa'];

	 if(file_exists('sayfa/'.$girileceksayfa.'.php'))
	 	include 'sayfa/'.$girileceksayfa.'.php';
	 else
	 	include 'sayfa/404.php';
	 mysqli_close($con);
	?>
</body>
</html>