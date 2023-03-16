// variables4.cairo
// Execute `starklings hint variables4` or use the `hint` watch subcommand for a hint.

// I AM  DONE

fn main() {
// add `mut` to the variable "x"... this way you can reassign the value if you wanted

    let mut x = 3;
    debug::print_felt(x);
    x = 5; // don't change this line
    debug::print_felt(x);
}
