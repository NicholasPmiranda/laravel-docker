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

Route::get('get', function (Request $request) {
    dd($request->all());

    return response()->json(['message'=> 'get']);
});

Route::post('post', function (Request $request) {
    dd($request->all());
    return response()->json(['message'=> 'put']);
});





Route::group(['middleware' => 'auth:api'], function (){
    Route::get('user', function () {
        return \Illuminate\Support\Facades\Auth::user();
    });

});
