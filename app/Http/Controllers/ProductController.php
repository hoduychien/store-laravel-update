<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use Session;
use Illuminate\Support\Facades\Redirect;

session_start();

class ProductController extends Controller
{
    public function add_product(){
    	return view('admin.add_product');
    }
    public function all_product(){
    	$all_product = DB::table('products')->get();
    	$manager_product = view('admin.all_product')->with('all_product',$all_product);
    	return view('admin_layout')->with('admin.all_product',$manager_product);
    }
    public function save_product(Request $request){
    	$data = array();
    	$data['name'] = $request->product_name;
    	$data['id_type'] = $request->product_id_type;
    	$data['description'] = $request->product_desc;
    	$data['unit_price'] = $request->product_unit_price;
    	$data['promotion_price'] = $request->product_promotion_price;
    	$data['image'] = $request->product_image;
    	DB::table('products')->insert($data);    
    	Session::put('message','Thêm sản phẩm thành công.');
    	return Redirect::to('add-product');
    }

    public function edit_product($product_id){
    	$edit_product = DB::table('products')->where('id',$product_id)->get();
    	$manager_product = view('admin.edit_product')->with('edit_product',$edit_product);
    	return view('admin_layout')->with('admin.edit_product',$manager_product);
    }
    public function update_product(Request$request,$product_id){
    	$data = array();
    	$data['name'] = $request->product_name;
    	$data['id_type'] = $request->product_id_type;
    	$data['description'] = $request->product_desc;
    	$data['unit_price'] = $request->product_unit_price;
    	$data['promotion_price'] = $request->product_promotion_price;
    	$data['image'] = $request->product_image;
    	DB::table('products')->where('id',$product_id)->update($data);
    	Session::put('message','Cập nhật sản phẩm thành công.');
    	return Redirect::to('all-product');
    }
    public function delete_product($product_id){
    	DB::table('products')->where('id',$product_id)->delete();
    	Session::put('message','Xoá danh mục loại sản phẩm thành công.');
    	return Redirect::to('all-product');
    }
}
