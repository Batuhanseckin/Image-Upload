<script type="text/javascript">
	var gosterim = 0;
	function aramagoster()
	{
		if(gosterim == 1)
		{
			document.getElementById("aramakismi").className = "arama";
			gosterim = 0;
		}
		else if(gosterim == 0)
		{
			document.getElementById("aramakismi").className = "arama active";
			gosterim = 1;
		}
	}
</script>
<div class="header">
		<div class="header-orta">
			<div class="header-sol">
					<a href="index.php" class="logo">Hızlı Resim</a>
					<div class="home"><a href="index.php"> <img src="images/home.png" height="27" width="27"></a></div>
					<div class="home ara" onclick="aramagoster();" ><a href="#"> <img src="images/search.png" height="35" width="35"></a></div>
					<div class="home"><a href="#"> <img src="images/shuffle.png" height="35" width="35"></a></div>
			</div>
			<div class="header-sag">
				<?php
					if(isset($_SESSION['uye'])) /* giriş yapıldıysa */
					{
						echo '<ul>  
						<a href="#"><li>Caps Yap</li></a>
						<a href="index.php?sayfa=resim-arsivi"><li>Resim Arşivi</li></a>
						<a href="#"><li class="acilir-menu"><span style="color:white !important">'.$_SESSION['kadi'].'</span> 
										<ul>
											<a href="#"><li>Profil</li></a>
											<a href="#"><li class="yardim">Ayarlar</li></a>
											<a href="#"><li>Albümler</li></a>
											<a href="#"><li>Resimler</li></a>
											<a href="#"><li>Favoriler</li></a>
											<a href="islem.php?islem=cikis-yap"><li>Çıkış Yap</li></a>
										</ul> 
									</li>
						</a>
						<a href="#"><li class="acilir-menu"><i class="fas fa-bars" ></i>
										<ul>
											<a href="#"><li>Blog</li></a>
											<a href="#"><li>Reklam</li></a>
											<a href="#"><li>Kötüye Kullanım</li></a>
											<a href="#"><li>İletişim</li></a>
											<a href="#"><li class="yardim">Yardım</li></a>
											<a href="#"><li>Twitter</li></a>
											<a href="#"><li>Facebook</li></a>
										</ul> 
									</li>
						</a>
					</ul>';
					}
					else   /* giriş yapılmadıysa */
					{
							echo '  
				<ul>
					<a href="#"><li>Caps Yap</li></a>
					<a href="index.php?sayfa=resim-arsivi"><li>Resim Arşivi</li></a>
					<a href="index.php?sayfa=giris-yap"><li>Giriş Yap</li></a>
					<a href="index.php?sayfa=kayit-ol"><li>Kayıt Ol</li></a>
					<a href="#"><li class="acilir-menu"><i class="fas fa-bars" ></i>
									<ul>
										<a href="#"><li>Blog</li></a>
										<a href="#"><li>Reklam</li></a>
										<a href="#"><li>Kötüye Kullanım</li></a>
										<a href="#"><li>İletişim</li></a>
										<a href="#"><li class="yardim">Yardım</li></a>
										<a href="#"><li>Twitter</li></a>
										<a href="#"><li>Facebook</li></a>
									</ul> 
								</li>
					</a>
				</ul>';
					}
				?>
				<!---->
			</div>
		</div>
</div>
<div id="aramakismi" class="arama">
	<input type="text" placeholder="Lüften aramak istediğiniz anahtar kelimeleri giriniz." name="aranan">
	<div class="etiketler">
	<a href="#">#caps</a>
	<a href="#">#wallpaper </a>
	<a href="#">#beşiktaş </a>
	<a href="#">#fenerbahçe</a> 
	<a href="#">#galatasaray</a> 
	<a href="#">#trabzonspor</a>
	</div>
</div>

