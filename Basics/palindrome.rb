#!/usr/bin/env ruby

def palindrome?(string)
  str = string.gsub(/[^\w]/, '').downcase
  str == str.reverse
end

puts palindrome?("A man, a plan, a canal -- Panama")
#=> true

puts palindrome?("Madam, I'm Adam!")
# => true

puts palindrome?("Abracadabra")
# => false
