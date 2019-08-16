<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
//import or using Tymon
//use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Facades\JWTFactory;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Contracts\JWTSubject;
use Tymon\JWTAuth\PayloadFactory;
use Tymon\JWTAuth\JWTManager as JWT;
use JWTAuth;

class UserController extends Controller {

    public function register(Request $request) {
        $validator = Validator::make($request->json()->all(), [
                    'name' => 'required|string|max:255',
                    'email' => 'required|string|email|max:255',
                    'password' => 'required|string|min:6',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors()->toJson(), 400);
        }

        $user = \App\User::create([
                    'name' => $request->json()->get('name'),
                    'email' => $request->json()->get('email'),
                    'password' => Hash::make($request->json()->get('password')),
                    'id_tipouser' => 2
        ]);

        $token = JWTAuth::fromUser($user);

        return response()->json(compact('user', 'token'), 201);
    }

    public function login(Request $request) {

        $credentials = $request->json()->all();
        $email = $request->json()->get('email');
        $password = $request->json()->get('password');
        try {
            $user = User::where('email', '=', $email)->whereNull('deleted_at')->first();
            if (!$token = JWTAuth::attempt($credentials)) {
                return response()->json(['error' => 'invalid_credentials_man'], 400);
            }
        } catch (JWTException $e) {
            return response()->json(['error' => 'could_not_created_token'], 500);
        }
        return response()->json(['token'=>compact('token'), 'user'=>$user]);
    }

    public function getAuthenticatedUser() {
        try {
            if (!$user = JWTAuth::parseToken()->authenticate()) {
                return response()->json(['user_not_found'], 400);
            }
        } catch (Tymon\JWTAuth\Exceptions\TokenExpiredException $e) {
            return response()->json(['token_expired'], $e->getStatusCode());
        } catch (Tymon\JWTAuth\Exceptions\TokenInvalidException $e) {
            return response()->json(['token_invalid'], $e->getStatusCode());
        } catch (Tymon\JWTAuth\Exceptions\JWTException $e) {
            return response()->json(['token_absent'], $e->getStatusCode());
        }

        return response()->json(compact('user'));
    }

    public function getDataUser() {
        $data = User::where('id_tipouser', '=', '2')->whereNull('deleted_at')->get(['id', 'name']);

        return $data;
    }

}
