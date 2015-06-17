#!/usr/bin/env ruby
require 'test_helper'
require 'braille'

# Unit test for Braille Class

class TestBraille < MiniTest::Test
  def setup
    @braille = Braille.new
    @braille_for_a = <<-EOF
O.
..
..
EOF

    @braille_for_helloword = <<-EOF
O. O. O. O. O. .O O. O. O. OO
OO .O O. O. .O OO .O OO O. .O
.. .. O. O. O. .O O. O. O. ..
EOF
  end

  def test_convert_braille_char_for_a
    assert_equal 'a', @braille.parse(@braille_for_a)
  end

  def test_convert_input_string_into_array_of_2x3
    assert_equal "O.\nOO\n..\n", @braille.convert(@braille_for_helloword)[0]
  end

  def test_translate
    assert_equal "helloworld", @braille.translate(@braille_for_helloword)
  end
end
