@extends('master')
@section('content')
	<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Sản phẩm : {{$sanpham->name}}</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb font-large">
					<a href="{{route('trang-chu')}}">Trang chủ</a> / <span>Thông tin chi tiết sản phẩm</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="container">
		<div id="content">
			<div class="row">
				<div class="col-sm-9">

					<div class="row">
						<div class="col-sm-4">
							<img src="source/image/product/{{$sanpham->image}}" alt="">
						</div>
						@if($sanpham->promotion_price!=0)
								<div class="ribbon-wrapper"><div class="ribbon sale">Sale</div></div>
							@endif
						<div class="col-sm-8">
							<div class="single-item-body">
								<p class="single-item-title"><h2>{{$sanpham->name}}</h2></p>
								<div class="space20">&nbsp;</div>
								<p class="single-item-price">
									@if($sanpham->promotion_price==0)
										<span class="flash-sale" style="font-size: 30px;color: #FF9900;font-weight: bold;">{{number_format($sanpham->unit_price)}} đồng</span>
										<div class="space20">&nbsp;</div>
									@else
										<span class="flash-del" style="font-weight: bolder;">{{number_format($sanpham->unit_price)}} đồng</span><br>
										<br>
										<span class="flash-sale" style="font-size: 30px;color: #FF9900;font-weight: bold;">{{number_format($sanpham->promotion_price)}} đồng</span>
										
									@endif
									
								</p>
							</div>

							<div class="clearfix"></div>
							<div class="space10">&nbsp;</div>

							<div class="single-item-options">
								
								<select class="wc-select" name="color">
									<option>Số lượng</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>
								<a class="add-to-cart pull-left" style="margin-left: -7px; " href="{{route('themgiohang',$sanpham->id)}}"><i class="fa fa-shopping-cart"></i></a>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>

					<div class="space40">&nbsp;</div>
					<div class="woocommerce-tabs">
						<ul class="tabs">
							<li><a href="#tab-description" style="color: green; font-size: 20px;font-weight: bolder;">Mô tả</a></li>
						</ul>

						<div class="panel" id="tab-description">
							<p>{{$sanpham->description}}</p>
						</div>
					</div>
					<div class="space50">&nbsp;</div>
					<div class="beta-products-list">
						<h4>Sản phẩm tương tự</h4>
						<div class="space20">&nbsp;</div>

						<div class="row">
						@foreach($sp_tuongtu as $sptt)
							<div class="col-sm-4">

								<div class="single-item">
									@if($sptt->promotion_price!=0)
										<div class="ribbon-wrapper"><div class="ribbon sale">Sale</div></div>
									@endif
									
									<div class="single-item-header">
										<a href="{{route('chitietsanpham',$sptt->id)}}"><img src="source/image/product/{{$sptt->image}}" alt="" height="150px" style="display: block; margin-left:  auto;margin-right: auto;"></a>

									</div>
									

									<div class="single-item-body">
										<p class="single-item-title" style="text-align: center;">{{$sptt->name}}</p>
										<div class="space5">&nbsp;</div>
										<p class="single-item-price" style="font-size: 18px">
											@if($sptt->promotion_price==0)
												<p style="margin-left: 75px;" ><span class="flash-sale" style="text-align: center;">{{number_format($sptt->unit_price)}} đồng</span></p>
												<div class="space5">&nbsp;</div>
											@else
												<p style="margin-left: 75px; "><span class="flash-del"  style="text-align: center;">{{number_format($sptt->unit_price)}} đồng</span></p>
												<p style="margin-left: 75px;"><span class="flash-sale"  style="text-align: center;">{{number_format($sptt->promotion_price)}} đồng</span></p>
											@endif
											<div class="space20">&nbsp;</div>
										</p>
									</div>
									<div class="single-item-caption" >
										<a class="add-to-cart pull-left" style="margin-left: 55px; " href="{{route('themgiohang',$sptt->id)}}"><i class="fa fa-shopping-cart"></i></a>
										<a class="beta-btn primary"  href="{{route('chitietsanpham',$sptt->id)}}">Chi tiết <i class="fa fa-chevron-right"></i></a>
										<div class="clearfix"></div>

									</div>
										<div class="space20">&nbsp;</div>
								</div>
							</div>
						@endforeach
						</div>
						<div class="row">{{$sp_tuongtu->links()}}</div>
					</div> <!-- .beta-products-list -->
				</div>
				<div class="col-sm-3 aside">
					<div class="widget">
						<h3 class="widget-title">Mô Tả</h3>
						<div class="space20">&nbsp;</div>
						<div class="widget-body">
							<div class="panel" id="tab-description">
							<p>{{$sanpham->description}}</p>
						</div>
						</div>
					</div> <!-- best sellers widget -->
					<div class="widget">
						<h3 class="widget-title">Hỉnh ảnh</h3>
						<div class="widget-body">
							<div class="space20">&nbsp;</div>
							<img src="source/image/product/{{$sanpham->image}}" alt="">
						</div>
					</div> <!-- best sellers widget -->
				</div>
			</div>
		</div> <!-- #content -->
	</div> <!-- .container -->
@endsection