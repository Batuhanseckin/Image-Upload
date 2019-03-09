
<div style="height: 750px; overflow-x: hidden; overflow-y: scroll;">
	<div class="giris-yap">
		<form class="form-giris-yap" method="post" action="islem.php?islem=giris-yap">
			<h2>Hoşgeldiniz</h2>  
			<?php if(isset($_SESSION['hatamesaji'])) { ?>
			<div class="sifre-hata"><span><?= $_SESSION['hatamesaji'] ?></span></div>
			<?php unset($_SESSION['hatamesaji']); } ?>
			<input placeholder="E-Posta Adresiniz" type="email" name="mail">
			<input placeholder="Şifreniz" type="password" name="pass"> 
			<input type="submit" name="giris-yap" value="GİRİŞ YAP">
			<div class="sifre-sifirla"><a href="index.php?sayfa=sifre-sifirla">ŞİFRENİZİ Mİ UNUTTUNUZ?</a></div>
		</form>
	</div>


</div>
</html>