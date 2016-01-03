# code your solution here

def power_digit_sum(x, n)
  bucket = Array.new(n, x)
  
  final_product = bucket.inject { |product, power| product * power }
  digits = final_product.to_s.chars.map(&:to_i)
  total = digits.inject { |sum, digit|  sum + digit }
  
  total
end