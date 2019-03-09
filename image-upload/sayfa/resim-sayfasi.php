<?php 
$id=$_GET["id"];
$sql=mysqli_query($con,'select K.kullanici_adi, K.adi, R.resim_id, R.aciklama, R.yuklenme_tarihi, R.resim_uzanti from resimler R inner join kullanicilar K on R.kullanici_id=K.id where R.resim_id ="'.$id.'"');
if(mysqli_num_rows($sql) != 0)
 		{
 			$row = mysqli_fetch_assoc($sql);
 		}
if($id!=$row['resim_id'])
		echo '<meta http-equiv="refresh" content="0;url=index.php?sayfa=404">';
?>

<div class="genel">
	<div class="sol">
		<div class="paylasim">
			<div class="resim"><center><img src="upload/<?php echo $row['resim_id'].'.'.$row['resim_uzanti']  ?>" width="776px" height="600px"></center></div>
			<div class="like">
				<i class="fas fa-thumbs-up"></i>
				<i class="fas fa-thumbs-down"></i>
				<i class="far fa-star"></i>
				<i class="fas fa-ellipsis-v"></i>
				<i class="fas fa-exclamation-triangle"></i>
			</div>
		</div>
		<?php 
		if($row['adi']!='Anonim')
		echo '<div class="yorum">
						<div class="pp">'.substr($row['adi'], 0,1).'</div>
						<div class="adi"><a href="#">'.$row['adi'].'</a></div>
						<div class="nick"><a href="#">'.$row['kullanici_adi'].'</a></div>
						<div class="yorum2">'.$row['aciklama'].'</div>
					  </div>';
		else
			echo '<div class="yorum">
						<div class="pp">'.substr($row['adi'], 0,1).'</div>
						<div class="adi">'.$row['adi'].'</div>
						<div class="nick"><a href="#">'.$row['kullanici_adi'].'</a></div>
						<div class="yorum2">'.$row['aciklama'].'</div>
					  </div>';

		 
			$sql=mysqli_query($con,'select y.*,k.* from yorumlar y join kullanicilar k on y.kullanici_id=k.id where resim_id ="'.$id.'"');
			while($row=mysqli_fetch_assoc($sql))
			{
				echo '<div class="yorum">
						<div class="pp">'.substr($row['adi'], 0,1).'</div>
						<div class="adi"><a href="#">'.$row['adi'].'</a></div>
						<div class="nick"><a href="#">@'.$row['kullanici_adi'].'</a></div>
						<div class="yorum2">'.$row['yorum'].'</div>
					  </div>';

			}

		 ?>

		<div class="yorum-yap">
			<form method="post" action="islem.php?islem=yorum-yap">
			<textarea cols="40" rows="3" placeholder="lütfen yorumunuzu giriniz." name="yorum" maxlength="250"></textarea>
			<input type="hidden" name="resim_id" value="<?php echo $id; ?>">
			<input type="submit" name="yorum-yap">
			</form>
		</div>
	</div>

	<div class="sag">
		<?php if(isset($_SESSION['hatamesaji'])) { ?>
			<div class="sifre-hata"><span><?= $_SESSION['hatamesaji'] ?></span></div>
			<?php unset($_SESSION['hatamesaji']); } ?>

	</div>
</div>
