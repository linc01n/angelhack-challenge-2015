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

  end

  def test_convert_braille_char_for_a
    assert_equal @braille.parse(@braille_for_a), "a"
  end

end
