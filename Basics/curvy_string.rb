#!/usr/bin/env ruby

class String
  def curvy?
    !("AEFHIKLMNTVWXYZ".include?(self.upcase))
  end
end

puts "foo".upcase
# >> FOO

puts "foo".include?("f")
# >> true

puts "foo".include?("fo")
# >> true

puts "foo".include?("fg")
# >> false

puts "foo".curvy?
# >> true

puts "Ab".curvy?
# >> false
