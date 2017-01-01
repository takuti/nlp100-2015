fn template(x: &str, y: &str, z: &str) -> String {
    return format!("{}時の{}は{}", x, y, z);
}

fn main() {
    println!("{}", template("12", "気温", "22.4"));
}
