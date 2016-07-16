require 'test_helper'

class MinitestPracticeTest < Minitest::Test
  def setup
    @target = ::MinitestPractice::Sample.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::MinitestPractice::VERSION
  end

  #-------------------
  # 6-2
  #-------------------
  def test_for_odd?
    assert_equal @target.odd?(0), false
    assert_equal @target.odd?(1), true
    assert_equal @target.odd?(2), false
  end

  #-------------------
  # 6-3
  #-------------------
  # 4 digits, even number
  # [x] 3 byte - false
  # [x] 4 byte - continue
  # [x] 5 byte - false
  # [x] not numeric character - false
  # [x] initial 0 - false
  # [x] even - true
  # [x] odd - false
  def test_for_check_number?
    assert_equal @target.check_number?('123'), false
    assert_equal @target.check_number?('12345'), false

    assert_equal @target.check_number?('123a'), false

    assert_equal @target.check_number?('0123'), false

    assert_equal @target.check_number?('1233'), false
    assert_equal @target.check_number?('1234'), true
  end

  #-------------------
  # 6-4
  #-------------------
  # 3-8byte length string - true
  # [ ] nil - false
  # [ ] 0byte - false
  # [ ] 2byte - false
  # [ ] 3byte - true
  # [ ] 4byte - true
  # [ ] 7byte - true
  # [ ] 8byte - true
  # [ ] 9byte - false
end
