module gm_world::to_do_list {
    use std::string::String;

    public struct TodoList has key, store {
        id: UID,
        items: vector<String>
    }

    public fun new(ctx: &mut TxContext): TodoList {
        let list = TodoList {
            id: object::new(ctx),
            items: vector[]
        };
        (list)
    }

    public fun  add(list: &mut TodoList, index: u64): String {
        list.items.push_back(item);
    }

    public fun remove(list: &mut TodoList, index: u64): String {
        list.items.remove(index)  

    }

    public fun delete(list: TodoList, index: u64){
        let TodoList {id, items: _ } = list;
        id.delete();
    }

    public fun length(list: &TodoList): u64 {
        list.items.length()
    }
}

// AVEts1AMVeom2a4Znw8V3hiM4pxwp15YQvNZR416hRLC