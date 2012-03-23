#!/usr/bin/env ruby

def count_words(string)
  wordlist = string.downcase.gsub(/\b[^\w]+\b/, ' ').split
  res_hash = {}
  wordlist.map {|word| res_hash[word] = wordlist.count word}
  res_hash
end

puts count_words("A man, a plan, a canal -- Panama").inspect
# => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}

puts count_words "Doo bee doo bee doo"
# => bee2doo3

require 'pp' # use pretty printing

pp count_words "Doo bee doo bee doo"
# => {'doo' => 3, 'bee' => 2}
