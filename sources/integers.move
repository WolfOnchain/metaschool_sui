module gm_world::integers {

    use sui::object::UID;
    use sui::tx_context::TxContext;
    public struct IntegerObject has key, drop {
        id: UID,
        a: u8,
        b: u16,
    }

    public fun init(a: u8, b: u16, ctx: &mut TxContext) {
        let object = IntegerObject{
            id: object::new(ctx),
            a: a,
            b: b, 
        }
    }


}
