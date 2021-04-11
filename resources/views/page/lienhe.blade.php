@extends('master')
@section('content')
	<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Contacts</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb font-large">
					<a href="index">Home</a> / <span>Contacts</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="beta-map">
		
		<div class="abs-fullwidth beta-map wow flipInX"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.6610966690732!2d108.22221451416942!3d16.03114814471716!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219efc027ef73%3A0x3a8ecf45368fe47e!2zSzM5LCAzIFRyxrDGoW5nIENow60gQ8awxqFuZywgSMOyYSBDxrDhu51uZywgSOG6o2kgQ2jDonUsIMSQw6AgTuG6tW5nLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1616928443453!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe></div>
	</div>
	<div class="container">
		<div id="content" class="space-top-none">
			
			<div class="space50">&nbsp;</div>
			<div class="row">
				<div class="col-sm-8">
					<h2>Liên Hệ </h2>
					<div class="space20">&nbsp;</div>
					<p>CD-Store (Mobile World Co. Ltd) thành lập vào tháng 03/2021 bởi thành viên sáng lập là Hồ Duy Chiến , lĩnh vực hoạt động chính của công ty bao gồm: mua bán sửa chữa các thiết bị liên quan đến điện thoại di động, thiết bị kỹ thuật số và các lĩnh vực liên quan đến thương mại điện tử.Bằng trải nghiệm về thị trường điện thoại di động từ đầu những năm 2021.</p>
					<div class="space20">&nbsp;</div>
					<form action="#" method="post" class="contact-form">	
						<div class="form-block">
							<input name="your-name" type="text" placeholder="Your Name (required)">
						</div>
						<div class="form-block">
							<input name="your-email" type="email" placeholder="Your Email (required)">
						</div>
						<div class="form-block">
							<input name="your-subject" type="text" placeholder="Subject">
						</div>
						<div class="form-block">
							<textarea name="your-message" placeholder="Your Message"></textarea>
						</div>
						<div class="form-block">
							<button type="submit" class="beta-btn primary">Send Message <i class="fa fa-chevron-right"></i></button>
						</div>
					</form>
				</div>
				<div class="col-sm-4">
					<h2>Thông tin liên hệ</h2>
					<div class="space20">&nbsp;</div>

					<h6 class="contact-title">Địa chỉ</h6>
					<div class="space10">&nbsp;</div>
					<p>
						K39/3 Trương chí cương,<br>
						Hải Châu, Đà nẵng <br>
						Việt nam
					</p>
					<div class="space20">&nbsp;</div>
					<h6 class="contact-title">Liên hệ trức tuyến</h6>
					<div class="space10">&nbsp;</div>
					<p>
						Liên hệ qua thư điện tử : <br>
						<a href="mailto:ChienHoo20@gmail.com">ChienHoo20@gmail.com</a><br>
						Hoặc qua hotline: 0762.766.682<br>
					</p>
					<div class="space20">&nbsp;</div>
				</div>
			</div>
		</div> <!-- #content -->
	</div> <!-- .container -->
@endsection