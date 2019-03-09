<?php 
session_start();
include 'baglan.php';

$islem = "";
if(isset($_GET['islem']))
	$islem = $_GET['islem'];

if($islem == "")
	echo 'İşlem belirtilmemiş.';
else
{
	if($islem == 'kayit-ol')
	{
	 	$pass=$_POST["pass"];
	 	$repass=$_POST["repass"];
	 	$mesaj = "";
		$adi=$_POST["adi"];
		$kullanici_adi=$_POST["kullanici_adi"];
		$mail=$_POST["mail"];
	 	if(strlen($pass)<6)
	 		$mesaj .= '<p>Şifreniz 6 karakterden kısa olamaz.</p>';

	 	if($pass!=$repass)
	 		$mesaj .= '<p>Şifreler eşleşmiyor.</p>';

	 	if(strlen($kullanici_adi)<3)
	 		$mesaj .= '<p>Kullanıcı adı 3 karakterden kısa olamaz.</p>';
	 	
	 		$kullanicivarmi = mysqli_fetch_assoc(mysqli_query($con, "select count(1) as Sayi from kullanicilar where kullanici_adi='$kullanici_adi'"));
	 	if($kullanicivarmi['Sayi'] == 1)
	 		$mesaj .= '<p>Böyle bir kullanıcı var.</p>';

	 		$mailvarmi = mysqli_fetch_assoc(mysqli_query($con, "select count(1) as Sayi from kullanicilar where e_posta='$mail'"));
		if($mailvarmi['Sayi'] == 1)
 			$mesaj .= '<p>Böyle bir e-posta var.</p>';

 		if($mesaj == "")
 		{
 			mysqli_query($con,"INSERT INTO kullanicilar(adi, kullanici_adi, e_posta,sifre) VALUES ('$adi','$kullanici_adi','$mail','$pass')");
 			$_SESSION['uye'] = mysqli_insert_id($con);
	 		$_SESSION['kadi'] = $kullanici_adi;
			echo '<meta http-equiv="refresh" content="0;url=index.php">';
 		}
 		else
 		{
 			$_SESSION['hatamesaji'] = $mesaj;
 			echo '<meta http-equiv="refresh" content="0; url=http://localhost/index.php?sayfa=kayit-ol
 			">';
 		}
	}
	elseif($islem == 'giris-yap')
	{
		$mail=$_POST["mail"];
		$pass=$_POST["pass"];
		$kullanicibilgi = mysqli_query($con, "select kullanici_adi, id from kullanicilar where e_posta='$mail' and sifre='$pass'");
		if(mysqli_num_rows($kullanicibilgi) == 1)
		{
			$kullanicibilgi = mysqli_fetch_assoc($kullanicibilgi);
			$_SESSION['uye'] = $kullanicibilgi['id'];
			$_SESSION['kadi'] = $kullanicibilgi['kullanici_adi'];
			echo '<meta http-equiv="refresh" content="0;url=index.php">';
		}
		else
		{
			$_SESSION['hatamesaji'] = "Bu kimlik bilgileri kayıtlarımızla örtüşmüyor.";
 			echo '<meta http-equiv="refresh" content="0;url=index.php?sayfa=giris-yap">';
		}


	}
	elseif($islem== 'upload')
	{	
		$dosya_sayisi=count($_FILES['yuklenen-dosya']['name']);
		$aciklama=$_POST['aciklama'];
	    $uzanti=array('image/jpeg','image/jpg','image/png','image/x-png','image/gif');
	    $dizin="/upload/";
		if(isset($_SESSION['uye']))
			$kullanici_id=$_SESSION['uye'];
	    else
	    	$kullanici_id=0;

		for ($i=0; $i <$dosya_sayisi ; $i++) 
		{
	    	$uzantim = strrev(mb_substr(strrev($_FILES['yuklenen-dosya']['name'][$i]), 0 , strrpos(strrev($_FILES['yuklenen-dosya']['name'][$i]), '.'), 'utf-8'));
		    if(in_array(strtolower($_FILES['yuklenen-dosya']['type'][$i]),$uzanti))
		    { 
		    	$fotoid = md5(round(microtime(true) * 1000));
			    $resim_adi=$fotoid.'.'.$uzantim;  
			    move_uploaded_file($_FILES['yuklenen-dosya']['tmp_name'][$i], "./$dizin/$resim_adi");


			    if($aciklama == "")
			    	$aciklama = mb_substr($_FILES['yuklenen-dosya']['name'][$i], 0, strrpos($_FILES['yuklenen-dosya']['name'][$i], '.'), 'utf-8');

			    $ekle=mysqli_query($con,"INSERT INTO resimler (resim_id,resim_uzanti,kullanici_id,aciklama,yuklenme_tarihi) VALUES ('".$fotoid."', '".$uzantim."', '".$kullanici_id."','".$aciklama."',now())") or die (mysqli_Error());
			    //echo '<meta http-equiv="refresh" content="0; url=index.php?sayfa=yukle">';
		    }
		    else
		    {
		    	echo '<br>YUKLENMEDI'. $_FILES['yuklenen-dosya']['name'][$i] .' type' . $_FILES['yuklenen-dosya']['type'][$i];
		    }
		 }
		 echo '<meta http-equiv="refresh" content="0; url=index.php">';
	}
	elseif($islem == 'cikis-yap')
	{
		session_destroy();
		echo '<meta http-equiv="refresh" content="0;url=index.php">';
	}
	elseif($islem=='yorum-yap')
	{		$mesaj="";
			$yorum=$_POST['yorum'];
			$resim_id=$_POST['resim_id'];

		if($yorum=="")
		{  
			$mesaj.="<p>Yorum satırı boş geçilemez</p>"; 
		}		
		if(!(isset($_SESSION['uye'])))
		{
			$mesaj.="<p>Yorum yapmak için giriş yapmanız gerekiyor.</p>";
		}
		if($mesaj=="")
		{
			$kullanici_id=$_SESSION['uye'];
			mysqli_query($con,"INSERT INTO yorumlar (kullanici_id,yorum,resim_id) VALUES ('".$kullanici_id."','".$yorum."','".$resim_id."')");
			echo '<meta http-equiv="refresh" content="0;url=index.php?sayfa=resim-sayfasi&id='.$resim_id.'">';
		}

 		{
 			$_SESSION['hatamesaji'] = $mesaj;
 			echo '<script type="text/javascript"> window.history.back()</script>'; //bir önceki sayfaya gitme kodu

 			
 		}
	}
	
}

?>