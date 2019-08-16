<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
//Login and Register
Route::post('register','UserController@register');
Route::post('login','UserController@login');
Route::get('profile','UserController@getAuthenticatedUser');

Route::middleware('auth:api')->get('/user', function(Request $request){
    return $request->user();
});

//Ticket Controller
Route::prefix('ticket')->group(function () {
    Route::get('/', 'TicketController@index');
    Route::get('/{id}', 'TicketController@show');
    Route::post('/', 'TicketController@store');
    Route::put('/{id}', 'TicketController@update');
    Route::delete('/{id}', 'TicketController@delete');
    Route::post('owner', 'TicketController@dataOwner');
    Route::post('confirm', 'TicketController@confirm');
});

//UserController
Route::post('cmb_user/', 'UserController@getDataUser');