# I am going to predict the output..
# The field type character %d indicates that this will be
# a float/decimal number; 05 indicates that there will be 0
# characters allowed before the decimal with 5 being allowed
# after the decimal. Puts is going to print the value to
# command prompt. 123 is the object/integer being acted on.

puts "%05d" % 123

# Output: After google, I realize that the format goes as
# follows: %[flags][width][.precision]type
# d indicates this will be decimal type
# 5 corresponds to the number of characters
# 0 replaces ' '
