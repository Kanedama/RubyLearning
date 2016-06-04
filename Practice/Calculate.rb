#under construction
# http://stackoverflow.com/questions/2844526/why-is-sqrt-not-a-method-on-numeric (REFERENCE PAGE)
class Numeric
  Math.methods(false).each do |method|
    define_method method do |*args|
      Math.send(method, self, *args)
    end
  end
end

# INPUT METHOD: Requests input from the user in regards to choosing an option on the Main Menu
def request_input
  print " + Please select an option: "
  x = gets.chomp
  x
end

# MATH METHODS
def add
  print " Please enter your first integer: "
  first_addend = gets.to_i
   # if (first_addend != Integer(first_addend) or Float(first_addend))  how to check if it's not a integer or float??
   #   print "You did not enter a number, please try again"
    #end

  print " Please enter your second integer: "
  second_addend = gets.to_i
   # if (second_addend != Integer(second_addend) or Float(second_addend))
   #   print "You did not enter a number, please try again"
   # end

  first_addend + second_addend
end

def subtract
  print " Please enter the minuend: "
  minuend = gets.to_i
  print " Please enter the subtrahend: "
  subtrahend = gets.to_i
  minuend - subtrahend
end

def multiply
  print " Please enter the first factor: "
  firstFactor = gets.to_i
  print " Please enter the second factor: "
  secondFactor = gets.to_i
  firstFactor * secondFactor
end

def divide
  print " Please enter the dividend: "
  dividend = gets.to_i
  print " Please enter the divisor"
  divisor = gets.to_i
  dividend / divisor
end

def exponentiate
  print " Please enter the base: "
  base = gets.to_i
  print " Please enter the power: "
  power = gets.to_i
  base**power
 end

def square_root
  print " Please enter a positive integer: "
  STDOUT.flush
  number = gets.to_i
  radical = Math.sqrt(number)
  [radical, -radical]
end

# PYTHAGOREAN MENU

#TROUBLESHOOT NEEDED (MATHEMATICS ERROR(?))
def base_and_opposite 
  system("cls")
  print "Please enter the base/opposite side: "
  baseOpposite = gets.to_f
  print "Please enter the hypotenuse: "
  hypotenuse = gets.to_f
  difference = baseOpposite* - hypotenuse*
  Math.sqrt(difference.to_f)
end

def hypotenuse
  system("cls")
  print "Please enter the base: "
  base = gets.to_f
  print "Please enter the opposite: "
  opposite = gets.to_f
  Math.hypot(base, opposite)
end

def pythagorean
  system("cls")
  puts "
                       ***  Pythagorean Menu  ***

  (1) Solve for the Base side
  (2) Solve for Opposite side
  (3) Solve for Hypotenuse side
  "
  case request_input()
    when "1"
      print "The length of the base side is #{base_and_opposite()}"
    when "2"
    when "3"
      hypotenuse()
  end
end


def sohcahtoa
end

def general_area
end

# THE MAIN MENU / INTERFACE; WHAT THE USER WILL BE SEEING
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
    print " + Both integers equate to #{add()}"
  when "2"
    print " - The difference equates to #{subtract()}"
  when "3"
    print " * The product equates to #{multiply()}"
  when "4"
    print " / The quotient equates to #{divide()}"
  when "5"
    print " ^ After exponentiation, your number equates to #{exponentiate}"
  when "6"
    sqrtArray = square_root
    print " □ The square root of your number is %f and %f" % [sqrtArray[0], sqrtArray[1]]
  when "7"
    pythagorean()
  when "8"
  when "9"
  when "10"
    exit
  end
end

puts main_menu