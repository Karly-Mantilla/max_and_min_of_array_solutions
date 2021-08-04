use std::io::{self, BufRead};

fn main() {
  let stdin = io::stdin();
  let mut numbers: Vec<i32> = stdin.lock().lines().next().unwrap().unwrap().trim().split(' ').map(|s| s.parse().unwrap()).collect();
  numbers.sort();
  println!("{} {}", numbers.last().unwrap(), numbers.first().unwrap());
}