fn main() {
    let s1 = "パトカー";
    let s2 = "タクシー";
    let mut s = "".to_string();

    for (c1, c2) in s1.chars().zip(s2.chars()) {
        s.push(c1);
        s.push(c2);
    }

    println!("{}", s);
}
