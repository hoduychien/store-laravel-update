<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use Session;
use Illuminate\Support\Facades\Redirect;

session_start();

class CategoryProduct extends Controller
{
    public function add_category_product(){
    	return view('admin.add_category_product');
    }
    public function all_category_product(){
    	$all_category_product = DB::table('type_products')->get();
    	$manager_category_product = view('admin.all_category_product')->with('all_category_product',$all_category_product);
    	return view('admin_layout')->with('admin.all_category_product',$manager_category_product);
    }
    public function save_category_product(Request $request){

    	$data = array();
    	$data['name'] = $request->category_product_name;
    	$data['description'] = $request->category_product_desc;
    	$data['status'] = $request->category_product_status;
    	$data['image'] = $request->category_product_image;

    	DB::table('type_products')->insert($data);    
    	Session::put('message','Thêm danh mục loại sản phẩm thành công.');
    	return Redirect::to('add-category-product');
    }
    public function unactive_category_product($category_product_id  ){
    	DB::table('type_products')->where('id',$category_product_id  )->update(['status'=>1]);
    	Session::put('message','Active loại sản phẩm thành công.');
    	return Redirect::to('all-category-product');
    }
    public function active_category_product($category_product_id  ){
    	DB::table('type_products')->where('id',$category_product_id  )->update(['status'=>0]);
    	Session::put('message','UnActive loại sản phẩm thành công.');
    	return Redirect::to('all-category-product');
    }


    public function edit_category_product($category_product_id){
    	$edit_category_product = DB::table('type_products')->where('id',$category_product_id)->get();
    	$manager_category_product = view('admin.edit_category_product')->with('edit_category_product',$edit_category_product);
    	return view('admin_layout')->with('admin.edit_category_product',$manager_category_product);
    }
    public function update_category_product(Request$request,$category_product_id){
    	$data = array();
    	$data['name'] = $request->category_product_name;
    	$data['description'] = $request->category_product_desc;
    	$data['image'] = $request->category_product_image;
    	DB::table('type_products')->where('id',$category_product_id)->update($data);
    	Session::put('message','Cập nhật danh mục loại sản phẩm thành công.');
    	return Redirect::to('all-category-product');
    }
    public function delete_category_product($category_product_id){
    	DB::table('type_products')->where('id',$category_product_id)->delete();
    	Session::put('message','Xoá danh mục loại sản phẩm thành công.');
    	return Redirect::to('all-category-product');
    }
}
