#!/usr/bin/env ruby

require './lib/braille'
puts "Input: "

input = ""

1.upto(3) do
  input << STDIN.gets
end

braille = Braille.new

puts braille.translate(input)
