fn cipher(s: String) -> String {
    let mut res = String::from("");
    for c in s.chars().collect::<Vec<char>>() {
        if c.is_lowercase() {
            res.push((219 - (c as u8)) as char);
        } else {
            res.push(c);
        }
    }
    return res;
}

fn main() {
    let mut s = String::from("Hello, world!");
    println!("Raw: {}", s);
    s = cipher(s);
    println!("Encoded: {}", s);
    s = cipher(s);
    println!("Decoded: {}", s);
}
