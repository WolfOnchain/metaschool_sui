// module gm_world::MyPerson {
//     use std::string;
//     use sui::object::{UID};
//     use sui::tx_context::TxContext;

//     struct Person has key {
//         id: UID,
//         name: string::String,
//         city: string::String,
//         age: u8,
//         date_of_birth: string::String,
//     }

//     public fun init(
//         name: string::String,
//         city: string::String,
//         age: u8,
//         date_of_birth: string::String,
//         ctx: &mut TxContext
//     ) {
//         let person = Person {
//             id: object::new(ctx),
//             name,
//             city,
//             age,
//             date_of_birth,
//         };

//         move_to(ctx, person);
//     }
// }