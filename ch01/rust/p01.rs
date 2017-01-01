fn main() {
    let s = "パタトクカシーー";
    let mut s_extracted = String::new();

    for (i, c) in s.chars().enumerate() {
        if i % 2 == 0 {
            s_extracted.push(c);
        }
    }

    println!("{}", s_extracted);
}
