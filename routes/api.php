<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
//Route::group(['prefix'=>'v1'],function (){
//   Route::get('/',function(){
//       $data = \App\Models\Product::all();
//       return response()->json([
//          'data'=>$data,
//           'message' => true
//       ]);
//   }) ;
//});
//Route::get('/',function(){
//    $data = \App\Models\Product::find(4)->reviews;
//    return response()->json([
//        'data'=>$data,
//        'message' => true
//    ]);
//}) ;
Route::apiResource('/products',\App\Http\Controllers\ProductController::class);
Route::group(['prefix'=>'products'],function(){
    Route::apiResource('/{product}/reviews',\App\Http\Controllers\ReviewController::class);
});