// primitive_types2.cairo
// Fill in the rest of the line that has code missing!
// No hints, there's no tricks, just get used to typing these :)

// I AM  DONE

fn main() {
    // A short string is a string whose length is at most 31 characters, and therefore can fit into a single field element.
    // Short strings are actually felts, they are not a real string.
    // Note the _single_ quotes that are used with short strings.

    let mut my_first_initial = 'C';
    if is_alphabetic(
    // The `ref` keyword is used to pass a reference to my_first_initial instead 
    // of its value, which is more efficient when passing large data structures
        ref my_first_initial
    ) {
        debug::print_felt('Alphabetical!');
    } else if is_numeric(
        ref my_first_initial
    ) {
        debug::print_felt('Numerical!');
    } else {
        debug::print_felt('Neither alphabetic nor numeric!');
    }
//  add `mut your_character = 'f*009kla'`
    let mut your_character = '*009kla'; // Finish this line like the example! What's your favorite short string?
    // Try a letter, try a number, try a special character, try a short string!
    if is_alphabetic(
        ref your_character
    ) {
        debug::print_felt('Alphabetical!');
    } else if is_numeric(
        ref your_character
    ) {
        debug::print_felt('Numerical!');
    } else {
        debug::print_felt('Neither alphabetic nor numeric!');
    }
}


// fn is_alphabetic(ref char: felt) -> bool {: This line declares a function named 
// `is_alphabetic` that takes a reference to a `felt` variable (which is assumed to be a character) and returns a boolean value.

// if char >= 'a' {: This line checks if the ASCII value of the character is greater than or 
// equal to the ASCII value of the lowercase letter 'a'.

// if char <= 'z' {: This line checks if the ASCII value of the character is less than or 
// equal to the ASCII value of the lowercase letter 'z'. If both conditions are true, the function returns true.

// false: If the character is not alphabetic, the function returns false.


fn is_alphabetic(ref char: felt) -> bool {
    if char >= 'a' {
        if char <= 'z' {
            return true;
        }
    }
    if char >= 'A' {
        if char <= 'Z' {
            return true;
        }
    }
    false
}

fn is_numeric(ref char: felt) -> bool {
    if char >= '0' {
        if char <= '9' {
            return true;
        }
    }
    false
}