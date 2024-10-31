// /*
// /// Module: gm_world
// module gm_world::gm_world;
// */
module gm_world::gm_world{
use std::string;
use sui::object::{Self, UID};
use sui::transfer;
use sui::tx_context::{Self, TxContext};

struct GmWorldObject has key, store{
    id: UID,
    text: string::String
}

public entry fun mint(ctx: &mut TxContext) {
    let object = GmWorldObject{
        id: object::new(ctx),
        text: string::utf8(b"Gm World!")
    };
    transfer::public_tranfer(object, tx_context::sender(ctx));
}}
