use std::fs::File;
use std::io::BufReader;
use std::io::BufRead;

fn main() {
    let f = File::open("../data/hightemp.txt").unwrap();

    // $ wc ../data/hightemp.txt
    println!("{}", BufReader::new(&f).lines().count());
}
