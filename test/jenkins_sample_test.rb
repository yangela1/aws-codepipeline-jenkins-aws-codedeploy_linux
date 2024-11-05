# test/sample_test.rb
require 'minitest/autorun'

# Define a simple test class
class SimpleTest < Minitest::Test
  # A test method
  def test_sum
    assert_equal 2 + 1, 3, "Expected 2 + 1 to equal 3"
  end
end
