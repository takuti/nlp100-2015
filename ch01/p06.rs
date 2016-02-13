use std::collections::HashSet;

fn main() {
    let s1: Vec<char> = "paraparaparadise".to_string().chars().collect();
    let s2: Vec<char> = "paragraph".to_string().chars().collect();

    let mut x = HashSet::new();
    for w in s1.windows(2) {
        x.insert(w);
    }

    let mut y = HashSet::new();
    for w in s2.windows(2) {
        y.insert(w);
    }

    println!("Union (X OR Y):");
    for bi_gram in x.union(&y) {
        println!("{:?}", bi_gram);
    }

    println!("Intersection (X AND Y):");
    for bi_gram in x.intersection(&y) {
        println!("{:?}", bi_gram);
    }

    println!("Difference (X - Y):");
    for bi_gram in x.difference(&y) {
        println!("{:?}", bi_gram);
    }

    println!("Difference (Y - X):");
    for bi_gram in y.difference(&x) {
        println!("{:?}", bi_gram);
    }

    println!("X contains \"se\": {}", x.contains(['s', 'e'].as_ref()));
    println!("Y contains \"se\": {}", y.contains(['s', 'e'].as_ref()));
}
