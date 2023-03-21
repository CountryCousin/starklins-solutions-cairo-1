// variables5.cairo
// Execute `starklings hint variables5` or use the `hint` watch subcommand for a hint.

// I AM DONE
use traits::Into;

fn main() {
    let number = 1_u8; // don't change this line
    debug::print_felt(number.into()); 

    // adding ` let` to the "number" variable below does not rename the variable rather it shadows the already defined "number" variable above
    let number = 3; // don't rename this variable
    debug::print_felt(number); 
}
