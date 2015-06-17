#!/usr/bin/env ruby

class Braille

  def initialize
    @rules = {
'O.
..
..
': "a",

'O.
O.
..
': "b",

'OO
..
..
': "c",

'OO
.O
..
': "d",

'O.
.O
..
': "e",

'OO
O.
..
': "f",

'OO
OO
..
': "g",

'O.
OO
..
': "h",

'.O
O.
..
': "i",

'.O
OO
..
': "j",

'O.
..
O.
': "k",

'O.
O.
O.
': "l",

'OO
..
O.
': "m",

'OO
.O
O.
': "n",

'O.
.O
O.
': "o",

'OO
O.
O.
': "p",

'OO
OO
O.
': "q",

'O.
OO
O.
': "r",

'.O
O.
O.
': "s",

'.O
OO
O.
': "t",

'O.
..
OO
': "u",

'O.
O.
OO
': "v",

'.O
OO
.O
': "w",

'OO
..
OO
': "x",

'OO
.O
OO
': "y",

'O.
.O
OO
': "z"
    }

    @char_array = []
    @english_word = ""
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

  def translate(input_string)
    convert(input_string)
    @char_array.each do |char|
      @english_word += parse(char)
    end
    @english_word
  end
end
