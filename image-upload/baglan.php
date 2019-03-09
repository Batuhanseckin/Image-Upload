<?php 
$con = mysqli_connect("localhost","root","","hizli_resim");
mysqli_set_charset($con, "utf8");
if(!$con)
	echo "baglanmadı";
?>