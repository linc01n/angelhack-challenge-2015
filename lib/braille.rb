#!/usr/bin/env ruby

class Braille

  def initialize
    @rules = {
'O.
..
..
': "a"
    }

  end

  def parse(input)
    @rules[input.to_sym]
  end
end
