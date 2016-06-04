# This program converts fahrenheight to celsius

# doctest: Convert method will convert from -40F to -40C
# >> convert(-40)
# => -40
# doctest: body temperature of 98.6F should be 37C
# >> convert 98.6
# => 37
# doctest: body temperature of 98F should not be 37C
# >> convert(98).round(6)
# => 36.666667
def convert(fahrenheight)
  (fahrenheight - 32.0) * 5/9
end

if __FILE__ == $PROGRAM_NAME
  print 'Please enter a temperature to convert to celsius: '
  temperature_in_F = gets.to_f
  puts 'Your temperature in celsius is %.2f' % convert(temperature_in_F)
end

# 3-6: create a method to convert fahrenheight to celsius and return the value
# 7-8: request input from the user and store it in variable x;
#       we use gets then chomp to take off the newline character and then
#       convert it to a float
# 10   Kernel's format method
# 11   we set the precision to one using this alternate method; utilizing round
#      in order to concatenate the strings, I had to utilize the method to_s
#      for the outputted float.
