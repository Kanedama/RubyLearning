# After reading the documentation on % and sprintf and before 
# interpreting this program, I am going to predict the output.
# The field type character %d indicates that this will be
# a float/decimal number; 05 indicates that there will be 0
# characters allowed before the decimal with 5 being allowed
# after the decimal. Puts is going to print the value to
# command prompt. 123 is the object/integer being acted on.

puts "%05d" % 123

# Output: 00123; %05d must have meant to print 5 characters
# total and fill in the remaining 'nil' values with 0's.