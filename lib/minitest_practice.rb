require "minitest_practice/version"

module MinitestPractice
  class Sample
    def odd?(val)
      return (val % 2 == 1)
    end

    def check_number?(val)
      if val.to_s.length != 4
        return false
      end
      if val.to_s[0] == '0'
        return false
      end
      return !(odd?(val.to_i))
    end
  end
end
