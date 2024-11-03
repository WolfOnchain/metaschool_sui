module gm_world::integers {

    use sui::object::UID;
    use sui::tx_context::{Self, TxContext};

    struct IntegerObject has key {
        id: UID,
        a: u8,
        b: u16
    }

    fun init(a: u8, b: u16, ctx: &mut TxContext) {
        let object = IntegerObject{
            id: object::new(ctx),
            a: a,
            b: b, 
        }
    }


}
