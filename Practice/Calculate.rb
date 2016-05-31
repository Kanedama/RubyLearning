#under construction

def request_input
  print "+ Please select an option: "
  x = gets.chomp
  x
end

def add
  print "Please enter your first integer: "
  first_addend = gets.to_i
  print "Please enter your second integer: "
  second_addend = gets.to_i
  first_addend + second_addend
end

def subtract
end

def multiply
end

def divide
end

def exponentiate
end

def square_root
end

def pythagorean
end

def sohcahtoa
end

def general_area
end

def main_menu
  puts "                     ***  Winston the Calculator  ***
  (1)  Add
  (2)  Subtract
  (3)  Multiply
  (4)  Divide
  (5)  Exponentiate
  (6)  Square Root
  (7)  Pythagorean Theorem
  (8)  SOH-CAH-TOA
  (9)  Area
  (10) Exit
  "
  case request_input()
  when "1"
    print "Both integers equate to #{add()}"
  when "2"
    print "'Where'd you get the pig?' asks the bartender."
  when "3"
    print "'That's not a pig, that's a duck!' the woman replies."
  when "4"
    print "'I was talking to the duck.'"
  when "10"
    exit
  end
end

puts main_menu