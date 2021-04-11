@extends('admin_layout')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Thêm sản phẩm
                        </header>
                        <div class="panel-body">
                        	
                            <div class="position-center">
                            	<?php  
								$message = Session::get('message');
								if($message){
									echo '<span class="text-alert" style="color: red;font-weight: bolder;text-align: center;width:100%;opacity: 70%;">',$message,'</span>';
									Session::put('message',null);
								}
							?>
                                <form role="form" action="{{URL::to('/save-product')}}" method="post">
                                	{{ csrf_field() }}
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tên sản phẩm</label>
                                    <input type="text" class="form-control" name="product_name" id="exampleInputEmail1" placeholder="Tên danh mục">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Mã loại</label>
                                    <input type="text" class="form-control" name="product_id_type" id="exampleInputEmail1" placeholder="Tên danh mục">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Mô tả sản phẩm</label>
                                    <textarea style="resize: none" rows="5" type="password" name="product_desc" class="form-control"  id="exampleInputPassword1"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Giá góc</label>
                                    <input type="text" class="form-control" name="product_unit_price" id="exampleInputEmail1" placeholder="Tên danh mục">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Giá khuyến mãi</label>
                                    <input type="text" class="form-control" name="product_promotion_price" id="exampleInputEmail1" placeholder="Tên danh mục">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputFile">Chọn ảnh sản phẩm</label>
                                    <input type="file" id="exampleInputFile" name="product_image">
                                </div>

                                <button type="submit" name="add_product" class="btn btn-info">Thêm danh mục</button>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
@endsection           