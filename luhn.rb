#1. take number - 4194560385008504
#2. break the number into its individual digits
#3. start from the right 
#4. double every second digit
#5. if the doubled value is greater than or equal to 10, take the value and substract 9
#6. sum the digits
#7. if the sum is divisible by 10 its a valid number
def luhn_valid (cc_number)
  sum1 = 0
  sum2 = 0
  
  cc_number.to_s.reverse.chars.each_slice(2) do |odd, even|
    sum1 += odd.to_i
    
    double = even.to_i * 2
    double -= 9 if double >= 10
    sum2 += double
  end
  if
  (sum1 + sum2) % 10 == 0
  print "valid"
  else
  print "invalid"
end
end



luhn_valid(4194560385008504)
luhn_valid(4194560385008505)