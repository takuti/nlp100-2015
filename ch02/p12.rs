use std::fs::OpenOptions;
use std::fs::File;
use std::io::prelude::*;
use std::io::BufReader;

fn main() {
    let f = File::open("../data/hightemp.txt").unwrap();

    let mut options = OpenOptions::new();
    options.write(true).create(true).truncate(true);

    let mut f_col1 = match options.open("col1.txt") {
        Err(e) => {
            println!("{}", e);
            return;
        },
        Ok(f) => f,
    };
    let mut f_col2 = match options.open("col2.txt") {
        Err(e) => {
            println!("{}", e);
            return;
        },
        Ok(f) => f,
    };

    // $ cat ../data/hightemp.txt | cut -f1
    // $ cat ../data/hightemp.txt | cut -f2
    for line in BufReader::new(&f).lines() {
        let s: String = line.unwrap();
        let v: Vec<&str> = s.split("\t").collect();
        f_col1.write_fmt(format_args!("{}\n", v[0]));
        f_col2.write_fmt(format_args!("{}\n", v[1]));
    }
}
