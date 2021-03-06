
# Given a 32-bit signed integer, reverse digits of an integer.

# Example 1:

# Input: 123
# Output:  321
# Example 2:

# Input: -123
# Output: -321
# Example 3:

# Input: 120
# Output: 21
# Note:
# Assume we are dealing with an environment which could only hold integers within the 32-bit signed integer range. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.

# To learn more about 32-bit signed integer, vist https://www.interviewcake.com/concept/java/integer-overflow

def reverse(x)
    return 0 if x == 0
    ans = x.to_s.reverse.to_i
    return 0 if ans > 2147483647 #(2^32) 
    x > 0 ? ans : ans * -1
end

p reverse(123)# == 321
p reverse(-123)# == -321
p reverse(120)# == 21
p reverse(0)# == 0
p reverse(1534236469)# == 0


