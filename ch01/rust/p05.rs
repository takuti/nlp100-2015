trait Ngram {
    fn n_gram(&self, n: usize);
}

// character n-gram
impl Ngram for Vec<char> {
    fn n_gram(&self, n: usize) {
        for w in self.windows(n) {
            println!("{:?}", w);
        }
    }
}

// word n-gram
impl Ngram for Vec<String> {
    fn n_gram(&self, n: usize) {
        for w in self.windows(n) {
            println!("{:?}", w);
        }
    }
}

fn main() {
    let s: String = "I am an NLPer".to_string();

    println!("Character bi-gram:");
    let chars: Vec<char> = s.chars().collect();
    chars.n_gram(2);

    println!("Word bi-gram:");
    let mut words: Vec<String> = Vec::new();
    for ss in s.split(" ") {
        words.push(ss.to_string());
    }
    words.n_gram(2);
}

