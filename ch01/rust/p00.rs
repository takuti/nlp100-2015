fn main() {
    let s = "stressed";

    for c in s.chars().rev() {
        print!("{}", c);
    }
    println!("");
}
