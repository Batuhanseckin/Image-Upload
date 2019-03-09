<section>
	<div class="upload"> 
		<div class="pc">
			<h2 class="aktif"> BİLGİSAYARDAN</h2>
		</div>
		<div class="net"> 
			<h2> İNTERNETTEN</h2> 
		</div>  
	</div>

	<form enctype="multipart/form-data" method="post" action="islem.php?islem=upload">
	 	<input type="file" multiple="multiple" name="yuklenen-dosya[]">
	 	<textarea rows="3" name="aciklama" cols="45" placeholder="Açıklama"></textarea>  
	 	<button type="submit">YÜKLE </button>
	 	<input type="checkbox" name="herkese-acık-mı" checked ><span>Herkese Açık</span>
	 	<div class="uc-nokta"><a href="#"><i class="fas fa-ellipsis-v"></i></a>
			<div class="upload-ayarlar">
			 	<div class="upload-ayarlar-yazi">Ayarlar </div>
			 	<div class="carpi"> <a 	href=""><i class="fas fa-times"></i></a></div>
			 	<div class="boyut-gorunum">
			 		 <span class="yazi1">Boyut</span> 
			 		 <span class="yazi2">Görünüm</span> 
			 		<div class="upload-boyut">
			 			<select size="8">
						  	<optgroup label="Yeniden boyutlandır">
						    	<option value="b-kucuk">Küçük(200px)</option>
						    	<option value="b-orta">Orta(500px)</option>
						    	<option value="b-buyuk">Büyük(1000px)</option>
						  	</optgroup>
						  	<optgroup label="Kırp">
						    	<option value="k-kucuk">Küçük(100px)</option>
						    	<option value="k-orta">Orta(250px)</option>
						    	<option vvalue="k-buyuk">Büyük(500px)</option>
						  	</optgroup>
						</select>
			 		</div>
			 		<div class="upload-gorunum">
			 			<select size="8">
						  	<optgroup label="Renk">
						    	<option value="Renksiz">Renksiz</option>
						    	<option value="Negatif">Negatif</option>
						  	</optgroup>
						</select>
			 		</div>
			 	</div>

			 </div>
	 	 </div>
	 	 
 	</form>
</section>
		<div class="duyuru">
			"Sürükle & Bırak" ve "Kopyala & Yapıştır" ile de dosya yükleyebilirsiniz.
 		</div>
 	<div class="site-ozellikleri">
 		<div class="kolay-ve-hizli">
 			<img src="images/bolt-icon1.png">
 			<h5>Kolay ve Hızlı</h5>
 			<span>İstediğiniz resmi seçin ve tek tıklama ile yükleyin.</span>
 		</div>
 		<div class="gelismis-paylasim"> 
 			<img src="images/share-2-icon.png" height="72" width="72">
 			<h5>Gelişmiş Paylaşım</h5>
 			<span>E-posta, forum ve sosyal medyada paylaşın.</span>
 		</div>
 		<div class="depolama"> 
 			<img src="images/storage.png " height="80" width="80">
 			<h5>Depolama</h5>
 			<span>Resimleri istediğiniz sürece depolayın.</span>
 		</div>

 	</div>

 	<div class="icerik">
 		<div class="baslik">
 			* Üyelerimizin Paylaşımları *
 		</div>
 		<?php
 		$resimler=mysqli_query($con,"select resim_id, resim_uzanti from resimler order by yuklenme_tarihi desc limit 36");
 		if(mysqli_num_rows($resimler) != 0)
 		{
 			$sira = 0;
 			while($row = mysqli_fetch_assoc($resimler))
 			{
 				$sira++;
 				if($sira % 6 == 0)
			 		echo '<div class="fotograflar-son"><a href="index.php?sayfa=resim-sayfasi&id='.$row['resim_id'].'"><img src="upload/'.$row['resim_id'].'.'.$row['resim_uzanti'].'"></a></div>';
			 	else
			 		echo '<div class="fotograflar"><a href="index.php?sayfa=resim-sayfasi&id='.$row['resim_id'].'"><img src="upload/'.$row['resim_id'].'.'.$row['resim_uzanti'].'"></a></div>';

 			}
 		}
  		?>
 		
 	</div>