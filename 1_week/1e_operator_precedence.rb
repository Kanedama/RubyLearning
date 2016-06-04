#The excessive commentary is for repetition; the mother of skill.

y = false #variable y assigned a boolean value of false
z = true #variable z assigned a boolean value of true

x = y or z 
puts x #=> false
# The assignment operator has a higher precedence than or, therefore
# this expression will assign the first true expression to x;
# we must also take into account that 'or' is a logic gate. If the
# left-hand side evaluates to true then the right side is not evaluated.

(x = y) or z
puts x #=> false
# In Ruby, any expression within brackets/parenthesis will be
# evaluated first; having higher precedence than 'or'. In this expression,
# x is again, assigned a false value.


x = (y or z)
puts x #=> true
# With both y (false) and z (true) in the brackets, we are now 
# evaluating both variables in respect to eachothers' properties.
# z having a true value has higher precedence than y and therefore
# x is true.

# Each expression evaluates to true whereas when we 'puts' each outcome
# we are able to evaluate the variable as well. I imagine this 
# distinction proving useful when working with conditional
# statements.
