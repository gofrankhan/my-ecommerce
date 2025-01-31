<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use App\Models\User;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\SubSubCategory;
use App\Models\Product;
use Cart;

class CartController extends Controller
{
    //
    public function AddToCart(Request $request, $id){

        if (Session::has('coupon')) {
          Session::forget('coupon');
       }
         
       $product = Product::findOrFail($id);

       if ($product->discount_price == NULL) {
           Cart::add([
               'id' => $id, 
               'name' => $request->product_name, 
               'qty' => $request->quantity, 
               'price' => $product->selling_price,
               'weight' => 1, 
               'options' => [
                   'image' => $product->product_thambnail,
                   'color' => $request->color,
                   'size' => $request->size,
               ], 
           ]);

           return response()->json(['success' => 'Successfully Added on Your Cart']);
            
       }else{

           Cart::add([
               'id' => $id, 
               'name' => $request->product_name, 
               'qty' => $request->quantity, 
               'price' => $product->discount_price,
               'weight' => 1, 
               'options' => [
                   'image' => $product->product_thambnail,
                   'color' => $request->color,
                   'size' => $request->size,
               ],
           ]);
           return response()->json(['success' => 'Successfully Added on Your Cart']);
       }
   } // end mehtod 

   // Mini Cart Section
   public function AddMiniCart(){

        $carts = Cart::content();
        $cartQty = Cart::count();
        $cartTotal = Cart::total();

        return response()->json(array(
            'carts' => $carts,
            'cartQty' => $cartQty,
            'cartTotal' => $cartTotal,

        ));
    } // end method 


    /// remove mini cart 
    public function RemoveMiniCart($rowId){
        Cart::remove($rowId);
        return response()->json(['success' => 'Product Remove from Cart']);

    } // end mehtod 
}
