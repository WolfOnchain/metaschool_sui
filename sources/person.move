module gm_world::MyPerson {
    use std::string::String;
    


    public struct Person has key, store {
        id: UID,
        name: String,
        city: String,
        age: u8,
        date_of_birth: String,
    }

    #[allow(lint(self_transfer))]

    public fun person (name: String, city: String, age: u8, 
                date_of_birth: String, ctx: &mut TxContext ) {

                    let person: Person = Person{
                        
                        id: object::new(ctx),
                        name,
                        city,
                        age,
                        date_of_birth

                    };

                    transfer::public_transfer(person, ctx.sender());

                }

}

// AD5mbhNXjoAbUX8A296QtjsvAs5AJa7whktz9ACe63dN