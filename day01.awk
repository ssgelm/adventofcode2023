#!/opt/homebrew/bin/gawk -f

{
  first = match($0, /^[^0-9]*([0-9])/, m)
  first_digit = m[1]
  last = match($0, /([0-9])[^0-9]*$/, m)
  last_digit = m[1]
  num = first_digit * 10 + last_digit
  sum += num
}
END {
  print sum
}
