#!/usr/bin/env ruby

class Braille

  def initialize
    @rules = {
'O.
..
..
': "a"
    }

    @char_array = []
  end

  def parse(input)
    @rules[input.to_sym]
  end

  def convert(input_string)
    input_string.split("\n").each do |line|
      line.split(" ").each_with_index do |char, index|
        @char_array[index] ||= []
        @char_array[index] << char + "\n"
      end
    end
    @char_array.map!{|char| char.join}
  end
end
