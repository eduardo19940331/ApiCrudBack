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

Route::get('ticket', 'TicketController@index');
Route::get('ticket/{id}', 'TicketController@show');
Route::post('ticket/', 'TicketController@store');
Route::put('ticket/{id}', 'TicketController@update');
Route::delete('ticket/{id}', 'TicketController@delete');

Route::post('cmb_user/', 'UserController@getDataUser');