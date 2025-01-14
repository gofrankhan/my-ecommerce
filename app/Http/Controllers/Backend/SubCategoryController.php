<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SubCategory;

class SubCategoryController extends Controller
{
    public function SubCategoryView(){

    	$subcategory = SubCategory::latest()->get();
    	return view('backend.category.sub_category_view',compact('subcategory'));
    }
}
