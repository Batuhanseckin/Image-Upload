<div style="height: 750px; overflow-x: hidden; overflow-y: scroll;">
	<div class="kayit-ol">
		<form class="form-kayit-ol" method="post" action="islem.php?islem=kayit-ol">
			<h2>Tüm özelliklere erişmek için lütfen kayıt olunuz.</h2>



			<?php if(isset($_SESSION['hatamesaji'])) { ?>
			<div class="sifre-hata"><span><?= $_SESSION['hatamesaji'] ?></span></div>
			<?php unset($_SESSION['hatamesaji']); } ?>



			
			<input placeholder="Adınız" type="text" name="adi" required="">
			<input placeholder="Kullanıcı Adınız" type="text" name="kullanici_adi" required="">
			<input placeholder="E-Posta Adresiniz" type="email" name="mail" required="">
			<input placeholder="Şifreniz" type="password" name="pass" required="">
			<input placeholder="Şifreniz(Onay)" type="password" name="repass" required="">
			<input type="submit" name="kayit-ol" value="KAYIT OL">
		</form>
	</div>
</div>