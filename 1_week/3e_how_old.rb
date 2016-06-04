=begin
  This program will display how old someone is, if given a value
  in seconds.
=end

def age_in_years(age_in_seconds)
  days_in_year = 365
  hours_in_day = 24
  minutes_in_hour = 60
  seconds_in_minute= 60
  age_in_seconds / (days_in_year * hours_in_day * minutes_in_hour *
    seconds_in_minute)
end

puts "Age in years: %.2f" % age_in_years(979_000_000)

=begin Line by line analysis

6: create a method called age_in_years with parameter, age in seconds.
7-10: assigning particular values to its corresponding variable
11-12: expression which converts your age in seconds to your age in years
13: end of method
15: this line will print a string; utilizing an interpolation through
    %.2f which sets the precision to two for the corresponding float.
    the corresponding float will be outputted by the method 'age_in_years'.

output: Age in years: 31.00

=end


#Playing around

def age_in_seconds(age_in_years)
  days_in_year = 365
  hours_in_day = 24
  minutes_in_hour = 60
  seconds_in_minute = 60
  age_in_years * days_in_year * hours_in_day * minutes_in_hour * seconds_in_minute
end

puts "How old are you in years? "
x = gets.chomp.to_i
puts "Age in Seconds: %i" % age_in_seconds(x)
STDOUT.flush
