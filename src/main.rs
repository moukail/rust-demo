// print hello, world
fn main() {
    println!("Hello, world!");
    let lucky_number = 7;
    another_function(lucky_number, 'h');
}

fn another_function(x: i32, unit_label: char) {
    println!("The value of x is: {x}{unit_label}");
}
