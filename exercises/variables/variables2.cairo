// variables2.cairo
// Execute `starklings hint variables2` or use the `hint` watch subcommand for a hint.

// I AM  DONE

fn main() {
// we define the variable x by assigning `x = 10`
    let x=10;
    if x == 10 {
        debug::print_felt('x is ten!');
    } else {
        debug::print_felt('x is not ten!');
    }
}
