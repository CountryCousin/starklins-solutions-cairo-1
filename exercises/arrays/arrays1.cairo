// arrays1.cairo
// Your task is to create an `Array` which holds three elements of type `felt`.
// The first element shoud be 0.
// Make me compile and pass the test!
// Execute `starklings hint arrays1` or use the `hint` watch subcommand for a hint.

// I AM  DONE

use array::ArrayTrait;
use option::OptionTrait;

fn create_array() -> Array<felt> {

// without `<felt>::` below, it still pass, go figure
    let mut a = ArrayTrait::<felt>::new(); // something to change here...
    a.append(0);
    a.append(2);
    a.append(3);
    a
}


// Don't change anything in the test
#[test]
fn test_array_len() {
    let mut a = create_array();
    assert(a.len() == 3_usize, 'Array length is not 3');
    assert(a.pop_front().unwrap() == 0, 'First element is not 0');
}

