use std::fs::File;
use std::io::BufReader;
use std::io::BufRead;

fn main() {
    let f = File::open("../data/hightemp.txt").unwrap();

    // $ sed 's/  / /g' ../data/hightemp.txt
    for line in BufReader::new(&f).lines() {
        println!("{}", line.unwrap().replace("\t", " "));
    }
}
