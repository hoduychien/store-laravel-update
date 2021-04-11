@extends('admin_layout')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                        Cập nhật danh mục sản phẩm
                        </header>
                        <div class="panel-body">
                        	@foreach($edit_category_product as $key =>$edit_value);
                            <div class="position-center">
                            	<?php  
								$message = Session::get('message');
								if($message){
									echo '<span class="text-alert" style="color: red;font-weight: bolder;text-align: center;width:100%;opacity: 70%;">',$message,'</span>';
									Session::put('message',null);
								}
							?>
                                <form role="form" action="{{URL::to('/update-category-product/'.$edit_value->id)}}" method="post">
                                	{{ csrf_field() }}
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tên danh mục</label>
                                    <input type="text" value="{{($edit_value->name)}}" class="form-control" name="category_product_name" id="exampleInputEmail1" placeholder="Tên danh mục">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Mô tả danh mục</label>
                                    <textarea style="resize: none" rows="5" type="password" name="category_product_desc" class="form-control"  id="exampleInputPassword1">{{($edit_value->description)}}</textarea>
                                </div>  
                                
                                <div class="form-group">
                                    <label for="exampleInputFile">Chọn ảnh</label>
                                    <input type="file" id="exampleInputFile" name="category_product_image">
                                    <br>
                                    <p>{{($edit_value->image)}}</p>
                                </div>
                                <div class="checkbox">
                                  
                                </div>
                                <button type="submit" name="add_category_product" class="btn btn-info">Cập nhật danh mục</button>
                            </form>
                            </div>
                            @endforeach
                        </div>
                    </section>

            </div>
           
@endsection           