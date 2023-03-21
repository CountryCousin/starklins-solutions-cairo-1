// primitive_types4.cairo
// Modify the integer types to make the tests pass.
// Learn how to convert between integer types, and felts.
// Execute `starklings hint primitive_types4` or use the `hint` watch subcommand for a hint.

// I AM  DONE

use traits::Into;
use traits::TryInto;
use option::OptionTrait;

fn sum_u8s(x: u8, y: u8) -> u8 {
    x + y
}

//TODO modify the types of this function to prevent an overflow when summing big values

// upgrade the types from `u8 to u16`
fn sum_big_numbers(x: u16, y: u16) -> u16 {
    x + y
}

fn convert_to_felt(x: u8) -> felt {
    //TODO return x as a felt.
    // add `return x.into();`
    return x.into();

}

fn convert_felt_to_u8(x: felt) -> u8 {
    //TODO return x as a u8.
    // `return x.try_into().unwrap();`
    return x.try_into().unwrap();
}

#[test]
fn test_sum_u8s() {
    assert(sum_u8s(1_u8, 2_u8) == 3_u8, 'Something went wrong');
}

#[test]
fn test_sum_big_numbers() {
    //TODO modify this test to use the correct integer types.
    // Don't modify the values, just the types.
    // See how using the _u8 suffix on the numbers lets us specify the type?
    // Try to do the same thing with other integer types.

    // upgrate the value types here ie from `u8 -> u16`
    assert(sum_big_numbers(255_u16, 255_u16) == 510_u16, 'Something went wrong');
}

#[test]
fn test_convert_to_felt() {
    assert(convert_to_felt(1_u8) == 1, 'Type conversion went wrong');
}

#[test]
fn test_convert_to_u8() {
    assert(convert_felt_to_u8(1) == 1_u8, 'Type conversion went wrong');
}

///
// In Rust, the .unwrap() method is used to extract the value from an 
// Option or a Result type. It is a shorthand way of handling the case where 
// you are sure that the value inside the Option or Result is not None or an Err variant respectively.

// The .unwrap() method returns the value if it is inside the Option or Result,
//  and panics otherwise. This means that if you call .unwrap() on an Option or
//   Result that contains None or an Err variant, your program will crash with a panic.

// While the .unwrap() method can be useful in certain situations where 
// you are sure that the value will always be present, it is generally not
//  recommended to use it extensively in production code. This is because panics 
//  can be expensive and can make your program crash in unexpected ways.

// Instead, it is often better to use methods like .unwrap_or() or .unwrap_or_else()
//  that allow you to provide a default value or a function to handle the
//   case where the value is not present. Alternatively, you can use pattern 
//   matching or combinators like .map() and .and_then() to safely extract values from Option and Result types.

// Overall, the .unwrap() method can be useful in certain situations where you are 
// confident that the value will always be present, but it should be used 
// with caution to avoid unexpected panics in your program.

///