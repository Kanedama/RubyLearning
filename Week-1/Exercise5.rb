my_string = 'Hello Ruby World' 

def my_string
  'Hello World' 
end

puts my_string
puts "#{my_string}"
puts my_string()

# my_string is a local variable and therefore has precedence
# over the method bearing the same name, my_string. 
# I tried two different methods to get the program to
# print the contents of the method rather than the value
# of the variable. Line 9 worked as this is a direct and
# explicit method call.


