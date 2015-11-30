# U2.W6: Testing Assert Statements

# I worked on this challenge [with: Becky Lehmann].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# In driver code, setting name equal to "bettysue"
# Both assert statements set up a block, which are called by yield in the code
# First assert passes because block is TRUE
# Second assert fails because block is FALSE


# 3. Copy your selected challenge here

def separate_comma(num)
  str_num = num.to_s.reverse

  if str_num.length < 4
    return str_num.reverse
  else
    i = 3
    while i < str_num.length
      str_num.insert(i, ',')
      i += 4
    end
  end
  return str_num.reverse
end

# def separate_comma(integer)
#   require "enumerator"
#   integer.to_s.split(//).reverse.enum_for(:each_slice, 3).to_a.map(&:join).join(",").reverse
# end

# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

test_1 = "1,204"
assert { test_1 == separate_comma(1204)}
test_2 = "1,456,789"
assert { test_2 == separate_comma(1456789)}
test_3 = "678"
assert { test_3 == separate_comma(678)}
test_4 = "1,234,546,879,654,321"
assert { test_4 == separate_comma(1234546879654321)}

# 5. Reflection