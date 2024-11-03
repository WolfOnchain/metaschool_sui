
module gm_world::gm_world {
    use std::string;

    public struct GmWorldObject has key, store {
        id: object::UID,
        text: string::String
    }

    public entry fun mint(ctx: &mut tx_context::TxContext) {
        let object = GmWorldObject {
            id: object::new(ctx),
            text: string::utf8(b"Gm World!")
        };
        transfer::public_transfer(object, ctx.sender());
    }
}
