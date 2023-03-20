// primitive_types3.cairo
// Destructure the `cat` tuple so that the print_felt will work.
// Execute `starklings hint primitive_types3` or use the `hint` watch subcommand for a hint.

// I AM  DONE

fn main() {
    let cat = ('Furry McFurson', 3); 
    // destructure "name" and "age" like so below;
    let (name, age)= cat;// your pattern here = cat;
    debug::print_felt(name);
    debug::print_felt(age);
}
