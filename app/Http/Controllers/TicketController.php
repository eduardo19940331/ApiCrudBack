<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ticket;

class TicketController extends Controller {

    public function index() {
        $query = Ticket::whereNull('deleted_at')->get();
        $data = [];
        foreach ($query as $row) {
            $obj = new \stdClass();
            $obj->id = $row->id;
            $obj->detail = $row->detail;
            $obj->user = $row->user_relation->name;
            array_push($data, $obj);
        }

        return $data;
    }

    public function show($id) {
        return Ticket::find($id);
    }

    public function store(Request $request) {

        $ticket = new Ticket;
        $ticket->detail = $request->detail;
        $ticket->id_user = $request->user;
        $ticket->ticket_pedido = "NO";
        $ticket->save();

        return "correcto";
    }

    public function update(Request $request, $id) {
        $ticket = Ticket::findOrFail($id);
        $ticket->detail = $request->detail;
        $ticket->id_user = $request->selUser;
        $ticket->updated_at = date('Y-m-d H:i:s');
        $ticket->save();

        return "correcto";
    }

    public function dataOwner(Request $request) {
        $tickets = Ticket::where('id_user', '=', $request->userId)->whereNull('deleted_at')->get();
        $data = [];

        foreach ($tickets as $ticket) {
            $obj = new \stdClass();
            $obj->id = $ticket->id;
            $obj->user = $ticket->user_relation->name;
            $obj->detail = $ticket->detail;
            $obj->pedido = $ticket->ticket_pedido;
            array_push($data, $obj);
        }

        return $data;
    }

    public function confirm(Request $request) {
        $ticket = Ticket::findOrFail($request->itemId);
        
        $ticket->ticket_pedido = "SI";
        $ticket->save();
        
        return "correcto";
    }

    public function delete(Request $request, $id) {
        $ticket = Ticket::findOrFail($id);
        $ticket->deleted_at = date('Y-m-d H:i:s');
        $ticket->save();

        return 204;
    }

}
