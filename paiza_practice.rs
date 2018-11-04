fn main(){
  let mut buffer = String::new();
  let _ = std::io::stdin().read_line(&mut buffer);

  let i = buffer.trim().parse::<u8>().unwrap();
  for _ in 0..i {
    let mut buffer = String::new();
    let _ = std::io::stdin().read_line(&mut buffer);
    let year = buffer.trim().parse::<u16>().unwrap();

    if year % 4 != 0 {
      println!("{} is not a leap year", year);
    } else if year % 100 == 0 && (year % 400) != 0  {
      println!("{} is not a leap year", year);
    } else {
      println!("{} is a leap year", year);
    }
  }
}
