%lang starknet

from starkware.cairo.common.cairo_builtins import HashBuiltin

// Since 32 bytes cannot be stored into a single field element, we sepeate the higher and lower 16 bytes.
struct Word32 {
    low: felt,
    high: felt,
}

@storage_var
func storage(key: Word32) -> (value: Word32) {
}

func _sstore{pedersen_ptr: HashBuiltin*, syscall_ptr: felt*, range_check_ptr}(key: Word32, value: Word32) {
    // Will somehow have to retrieve the address from the context.
    const address = 0;
    storage.write(key, value);

    return ();
}

func _sload{pedersen_ptr: HashBuiltin*, syscall_ptr: felt*, range_check_ptr}(key: Word32) -> (value: Word32) {
    // Will somehow have to retrieve the address from the context.
    const address = 0;
    let value = storage.read(key);

    return (value);
}