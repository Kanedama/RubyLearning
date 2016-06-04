# I know this is overkill but I wanted to live a little :P
# Too little time to add control flow, I must go on to finish the other
# challenges before the week is up! Please let me know if there is any
# code here that can be simplified or condensed (I'm sure there is)


def top_logo
  print "                         = Temperature Converter 1.0 =\n\n"
end

require 'io/console'
def inputContinue
  print "\n + Press any key to continue..."
  STDIN.getch
  return
end


def menu_select
  print "\n+ Please select an option: "
  x = gets.chomp
  x
end

def request_temp
  system("cls")
  top_logo()
  print " + Please enter a temperature: "
  x = gets.chomp
  x
end

### TEMPERATURE MENUS/FORMULAS ###

# FAHRENHEIGHT #

def f_to_c(temperature)
  conversion = (temperature.to_f - 32)/1.8
  puts "
   %.2f degrees in fahrenheight converts to %.2f degrees in celsius." % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  fahrenheight_menu()
end

def f_to_k(temperature) # I understand that kelvins could use the same function as rankines essentially but I'd like to keep them separate for now
  conversion = (temperature.to_f + 459.67)/1.8
  puts "
  %.2f degrees in fahrenheight converts to %.2f degrees in kelvins." % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  fahrenheight_menu()
end

def f_to_ra(temperature)
  conversion = temperature.to_f + 459.67
  puts "
  %.2f degrees in fahrenheight converts to %.2f degrees in rankines" % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  fahrenheight_menu()
end

def f_to_re(temperature)
  conversion = (temperature.to_f - 32)/2.25
  puts "
  %.2f degrees in fahrenheight converts to %.2f degrees in réamures" % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  fahrenheight_menu()
end


def fahrenheight_menu
  system("cls")
  top_logo()
  puts "Convert degrees to:  
  (1) Celsius
  (2) Kelvins
  (3) Rankines
  (4) Réaumures
  (5) Back to Main Menu"

  case menu_select()
  when '1'
    f_to_c(request_temp())
  when '2'
    f_to_k(request_temp())
  when '3'
    f_to_ra(request_temp())
  when '4'
    f_to_re(request_temp())
  when '5'
    interface()
  end
end


# CELSIUS #

def c_to_f(temperature)
  conversion = temperature.to_f * 1.8 + 32
  puts "
  %.2f degrees in celsius converts to %.2f degrees in fahrenheight" % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  celsius_menu()
end

def c_to_k(temperature)
  conversion = temperature.to_f + 273.15
  puts "
  %.2f degrees in celsius converts to %.2f degrees in kelvins" % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  celsius_menu()
end

def c_to_ra(temperature)
  conversion = temperature.to_f * 1.8 + 32+ 459.67
  puts "
  %.2f degrees in celsius converts to %.2f degrees in rankines" % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  celsius_menu()
end

def c_to_re(temperature)
  conversion = temperature.to_f * 0.8
  puts "
  %.2f degrees in celsius converts to %.2f degrees in réamures" % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  celsius_menu()
end

def celsius_menu
  system("cls")
  top_logo()
  puts "Convert degrees to:  
  (1) Fahrenheight
  (2) Kelvins
  (3) Rankines
  (4) Réaumures
  (5) Back to Main Menu"
  case menu_select
  when '1'
    c_to_f(request_temp())
  when '2'
    c_to_k(request_temp())
  when '3'
    c_to_ra(request_temp())
  when '4'
    c_to_re(request_temp())
  when '5'
    interface()
  end
end

# KELVIN #

def k_to_c(temperature)
  conversion = temperature.to_f - 273.15
  puts "%.2f degrees in kelvins converts to %.2f in celsius." % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  kelvin_menu()
end

def k_to_f(temperature)
  conversion = temperature.to_f * 1.8 - 459.67
  puts "%.2f degrees in kelvins converts to %.2f in fahrenheight" % [temperature, conversion]
  
  inputContinue()
  STDOUT.flush
  kelvin_menu()
end

def k_to_ra(temperature)
  conversion = temperature.to_f * 1.8
  puts "%.2f degrees in kelvins converts to %.2f in rankines" % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  kelvin_menu()
end

def k_to_re(temperature)
  conversion = (temperature.to_f - 273.15) * 0.8
  puts "%.2f degrees in kelvins converts to %.2f in réamures" % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  kelvin_menu()
end


def kelvin_menu
  system("cls")
  top_logo()
  puts "Convert degrees to:  
  (1) Celsius
  (2) Fahrenheight
  (3) Rankines
  (4) Réaumures
  (5) Back to Main Menu"
  case menu_select
  when '1'
    k_to_c(request_temp)
  when '2'
    k_to_f(request_temp)
  when '3'
    k_to_ra(request_temp)
  when '4'
    k_to_re(request_temp)
  when '5'
    interface()
  end
end

# RANKINE #

def ra_to_c(temperature)
  conversion = (temperature -32 -459.67)/1.8
  puts "%.2f degrees in rankines converts to %.2f in celsius" % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  rankine_menu()
end

def ra_to_f(temperature)
  conversion = temperature - 459.67
  puts "%.2f degrees in rankines converts to %.2f in fahrenheight" % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  rankine_menu()
end

def ra_to_k(temperature)
  conversion = temperature/1.8
  puts "%.2f degrees in rankines converts to %.2f degrees in kelvins" % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  rankine_menu()
end

def ra_to_re(temperature)
  conversion = (temperature - 32 - 459.67)/2.25
  puts "%.2f degrees in rankines converts to %.2f degrees in réamures"

  inputContinue()
  STDOUT.flush
  rankine_menu()
end

def rankine_menu
  system("cls")
  top_logo()
  puts "Convert degrees to:  
  (1) Celsius
  (2) Fahrenheight
  (3) Kelvins
  (4) Réaumures
  (5) Back to Main Menu"
  case menu_select
  when '1'
    ra_to_c(request_temp)
  when '2'
    ra_to_f(request_temp)
  when '3'
    ra_to_k(request_temp)
  when '4'
    ra_to_re(request_temp)
  when '5'
    interface()
  end
end

# REAUMUR #

def re_to_c(temperature)
  conversion = temperature * 1.25
  puts "%.2f degrees in réamures converts to %.2f degrees in celsius" % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  reaumur_menu()
end

def re_to_f(temperature)
  conversion = temperature * 2.25 + 32
  puts "%.2f degrees in réamures converts to %.2f degrees in fahrenheight" % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  reaumur_menu()
end

def re_to_k(temperature)
  conversion = temperature * 1.25 + 273.15
  puts "%.2f degrees in réamures converts to %.2f degrees in kelvins" % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  reaumur_menu()
end

def re_to_ra(temperature)
  conversion = temperature * 2.25 + 32 + 459.67
  puts "%.2f degrees in réamures converts to %.2f degrees in rankines" % [temperature, conversion]

  inputContinue()
  STDOUT.flush
  reamur_menu()
end

def reaumur_menu
  system("cls")
  puts "Convert degrees to:  
  (1) Celsius
  (2) Fahrenheight
  (3) Kelvins
  (4) Rankines
  (5) Back to Main Menu"
  case menu_select
  when '1'
    re_to_c(request_temp)
  when '2'
    re_to_f(request_temp)
  when '3'
    re_to_k(request_temp)
  when '4'
    re_to_ra(request_temp)
  when '5'
    interface()
  end
end

### MISC ###

def userManuel
  system("cls")
  puts "+ Welcome to Temperature Converter 1.0

The correct use of this program involves entering in solely integers
of the choice which corresponds to your needs. Anything else besides
numbers may cause technical issues. Use at your own discretion.

CAUTION: FLAMMABLE "

inputContinue()
  STDOUT.flush
  interface()
end

### MAIN MENU ###

# INTERFACE #
def interface
system("cls")
top_logo()
puts "+ Please select a unit to convert: 
  (1) Fahrenheight
  (2) Celsius
  (3) Kelvin
  (4) Rankine
  (5) Réaumur
  (6) User Manuel
  (7) Exit"

case menu_select()
	when '1'
    fahrenheight_menu
  when '2'
    celsius_menu
  when '3'
    kelvin_menu
  when '4'
    rankine_menu
  when '5'
    reaumur_menu
  when '6'
    userManuel()
  when '7'
    exit
  end
end

puts interface()
