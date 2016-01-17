use std::collections::BTreeMap;

fn main() {
    let s = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.";
    let two = vec![1, 5, 6, 7, 8, 9, 15, 16, 19];

    let mut dict = BTreeMap::new();

    for (i, ss) in s.split(" ").enumerate() {
        let l = if two.contains(&(i+1)) { 1 } else { 2 };
        dict.insert(i+1, ss[..l].to_string());
    }

    for k in dict.keys() {
        println!("{} => {}", k, dict[k]);
    }
}
