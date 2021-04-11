@extends('admin_layout')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Thêm danh mục loại sản phẩm
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
                                <form role="form" action="{{URL::to('/save-category-product')}}" method="post">
                                	{{ csrf_field() }}
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tên danh mục loại sản phẩm</label>
                                    <input type="text" class="form-control" name="category_product_name" id="exampleInputEmail1" placeholder="Tên danh mục">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Mô tả danh mục loại sản phẩm</label>
                                    <textarea style="resize: none" rows="5" type="password" name="category_product_desc" class="form-control"  id="exampleInputPassword1" placeholder="Mô tả danh mục"></textarea>
                                </div>
                                <div class="form-group">
                                	<label for="exampleInputPassword1">Hiển thị</label>
                                    <select name="category_product_status" class="form-control input-sm m-bot15">
		                                <option value="0">Ẩn</option>
		                                <option value="1">Hiển thị</option>
		                            </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputFile">Chọn ảnh</label>
                                    <input type="file" id="exampleInputFile" name="category_product_image">
                                </div>
                                <div class="checkbox">
                                  
                                </div>
                                <button type="submit" name="add_category_product" class="btn btn-info">Thêm danh mục</button>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
@endsection           