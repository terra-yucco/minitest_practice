require "minitest_practice/version"

module MinitestPractice
  class Sample

    # 6-2
    def odd?(val)
      return (val % 2 == 1)
    end

    # 6-3
    def check_number?(val)
      if val.to_s.length != 4
        return false
      end
      if val.to_s[0] == '0'
        return false
      end
      return !(odd?(val.to_i))
    end

    # 6-4
    def enough_length?(val)
      return (3 <= val.to_s.length && val.to_s.length <= 8)
    end

    # 6-5
    def divide(dividend, divisor)
      if divisor == 0
        return false
      end
      return (dividend / divisor).to_f
    end

    # 6-6
    def fizz_buzz(val)
      result = ''
      if (val % 3 == 0)
        result += 'Fizz'
      end
      if (val % 5 == 0)
        result += 'Buzz'
      end
      return result
    end
  end
end
