# This program converts fahrenheight to celsius

def convert(fahrenheight)
	(fahrenheight - 32) / 1.8
end

print "Please enter a temperature to convert to celsius: "
x = gets.chomp.to_f

puts "Your temperature in celsius is %.2f" % convert(x)
puts "Your temperature is " + ((convert(x)*100).round/100.0).to_s + " in celsius."

# 3-6: create a method to convert fahrenheight to celsius and return the value
# 7-8: request input from the user and store it in variable x;
#       we use gets then chomp to take off the newline character and then
#       convert it to a float
# 10   Kernel's format method
# 11   we set the precision to one using this alternate method; utilizing round
#      in order to concatenate the strings, I had to utilize the method to_s
#      for the outputted float.