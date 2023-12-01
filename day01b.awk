#!/opt/homebrew/bin/gawk -f

{
  gsub(/one/, "one1one")
  gsub(/two/, "two2two")
  gsub(/three/, "three3three")
  gsub(/four/, "four4four")
  gsub(/five/, "five5five")
  gsub(/six/, "six6six")
  gsub(/seven/, "seven7seven")
  gsub(/eight/, "eight8eight")
  gsub(/nine/, "nine9nine")
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
