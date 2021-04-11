@extends('master')
@section('content')
<!DOCTYPE html>
<html lang="en">

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="source/assets/abme/sheet/bootstrap.css">
	<link rel="stylesheet" href="source/assets/abme/sheet/ionicons.min.css">
	<link rel="stylesheet" href="source/assets/abme/sheet/mine.css">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,700" rel="stylesheet">
	<script src="source/assets/abme/javascript/myscript.js"></script>
</head>

<body>
	<audio autoplay >
		  <source src="source/assets/abme/audio.mp3" type="audio/mpeg">
	</audio>
	<div class="container" style="margin-top: 116px;">
		<div class="row">
			<div class="col-11 mx-auto profile">
				<div class="py-3 px-2 px-lg-4 py-lg-5">

					<div class="row">
						<div class="avatarBox col-12 col-lg-5">
							<img src="source/assets/abme/img/bg.jpg" class="img-fluid">
						</div>

						<div class="infoBox col-12 col-lg-6 mt-2 mt-lg-0">
							<p class="sayHi">Hello</p>

							<div class="name">
								<p><span>We are</span> 18CT3</p>
								<p class="s">Verified
									<span class="ion-ios-checkmark-outline"></span>
								</p>
								<p><span class=""></span>We Love 18CT3 <3 </p>

							</div>
							<hr>

							<div class="detailInfo">
								<div class="row my-2">
									<div class="col-lg-4 col-12 boldd">Thành Viên:</div>
									<div class="col-lg-8 col-12 b">Duy Chiến -- Ngọc Pháp <br> Duy Uyên -- Hoài Giang</div>
								</div>
								<div class="row my-2">
									<div class="col-lg-4 col-12 boldd">Đang học tại:</div>
									<div class="col-lg-8 col-12 b"><a href="https://dau.edu.vn/" style="color: black"  target="_blank">Danang Architecture University</a></div>
								</div>
								<div class="row my-2">
									<div class="col-lg-4 col-12 boldd">Chuyên Ngành:</div>
									<div class="col-lg-8 col-12 b">Công nghệ thông tin</div>
								</div>
								<div class="row">
									<div class="col-lg-4 col-12 boldd">Lớp</div>
									<div class="col-lg-8 col-12 b">18CT3</div>
								</div>

							</div>
						</div>
					</div>

				</div>
			</div>
			<div class="col-11 mx-auto bg-danger contact text-center">
				<div class="social col-12">
					<!-- Facebook -->
					<a href="https://www.facebook.com/ChienHoo20" target="_blank">
						<span class="ion-social-facebook mr-4 mr-lg-5"></span>
					</a>
					<span class="ion-social-instagram-outline mr-4 mr-lg-5 ml-lg-3"></span>
					<span class="ion-social-whatsapp-outline mr-4 mr-lg-5 ml-lg-3"></span>
					<span class="ion-social-skype-outline mr-4 mr-lg-5 ml-lg-3"></span>
					<span class="ion-social-twitter-outline mr-4 mr-lg-5 ml-lg-3"></span>
					<span class="ion-social-linkedin-outline ml-lg-3"></span>
				</div>
			</div>
		</div>
	</div>

</body>
<footer>
	<div class="container-fluid mt-2">
		<div class="row">
			<div class="col-11 text-right">
				<p class="license mr-lg-4 mr-0">
				</p>
			</div>
		</div>
	</div>
</footer>

</html>

@endsection