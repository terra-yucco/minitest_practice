require 'test_helper'

class MinitestPracticeTest < Minitest::Test
  def setup
    @target = ::MinitestPractice::Sample.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::MinitestPractice::VERSION
  end

  def test_for_odd?
    assert_equal @target.odd?(0), false
    assert_equal @target.odd?(1), true
    assert_equal @target.odd?(2), false
  end

  # 4 digits, even number
  # [x] 3 byte - false
  # [ ] 4 byte - continue
  # [x] 5 byte - false
  # [ ] not numeric character - false
  # [ ] initial 0 - false
  # [ ] even - true
  # [ ] odd - false
  def test_for check_number?
    
    assert_equal @target.check_number?('123'), false
    assert_equal @target.check_number?('12345'), false
  end
end
