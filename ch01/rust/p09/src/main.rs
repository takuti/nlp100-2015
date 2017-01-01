extern crate rand;
use rand::{Rng, thread_rng};

fn typoglycemia(words: Vec<String>) -> String {
    let mut res = String::new();
    let mut rng = thread_rng();
    for w in &words {
        let n = w.len();
        if n <= 4 {
            res.push_str(w);
        } else {
            let mut w_vec: Vec<char> = w.chars().collect();
            let head = w_vec.remove(0);
            let tail = w_vec.remove(n-2);

            res.push(head);
            rng.shuffle(&mut w_vec);
            res.push_str(w_vec.iter().cloned().collect::<String>().as_ref());
            res.push(tail);
        }
        res.push(' ');
    }
    return res;
}

fn main() {
    let s = String::from("I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind .");
    println!("{}", s);
    let mut words: Vec<String> = Vec::new();
    for ss in s.split(" ") {
        words.push(ss.to_string());
    }
    println!("{}", typoglycemia(words));
}
