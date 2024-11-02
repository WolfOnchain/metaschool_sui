module gm_world::MyPerson {
    use std::string;

    struct Person has key{
        name: string,
        city: string,
        age: u8,
        date_of_birth:string, 
    }
}