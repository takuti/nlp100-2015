fn main() {
    let s = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.";
    let ignored_chars: &[_] = &[',', '.'];
    let mut l = Vec::new();

    for mut sub_s in s.split(" ") {
        sub_s = sub_s.trim_matches(ignored_chars);
        l.push(sub_s.chars().count());
    }

    assert_eq!(l, [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7, 9]);
}
