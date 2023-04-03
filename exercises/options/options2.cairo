// options2.cairo
// Execute `starklings hint options2` or use the `hint` watch subcommand for a hint.

// I AM  DONE

use option::OptionTrait;
use debug::print_felt;

#[test]
fn test_options() {
    let target = 'starklings';
    let optional_some = Option::Some(target);
    let optional_none:Option<felt> = Option::None(());
    simple_option(optional_some);
    simple_option(optional_none);
}

fn simple_option(optional_target: Option<felt>) {
    // TODO: use the `is_some` and `is_none` methods to check if `optional_target` contains a value.
    // Place the assertion and the print statement below in the correct blocks.
    

    if optional_target.is_some() {
        assert(optional_target.unwrap()=='starklings', 'err1');
       debug::print_felt(optional_target.unwrap());
    } else {
        debug::print_felt('option is empty !');
    }
}

impl OptionFeltCopy of Copy::<Option<felt>>;
impl OptionFeltDrop of Drop::<Option<felt>>;
