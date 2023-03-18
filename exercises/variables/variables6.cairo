// variables6.cairo
// Execute `starklings hint variables6` or use the `hint` watch subcommand for a hint.

// I AM DONE
use traits::Into;

// Constants types must also always be annotated,
// meaning the `type` of the constant must be stated,
// in this case we add `felt` and `u8` to NUMBER and SMALL_NUMBER
const NUMBER : felt   = 3;
const SMALL_NUMBER : u8  = 3_u8;
fn main() {

    debug::print_felt(NUMBER);
    debug::print_felt(SMALL_NUMBER.into());
}
