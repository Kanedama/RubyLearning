# This program will tell you how many minutes there are in a year.

def minutes_in_year
	days_in_year = 365
	hours_in_day = 24
	minutes_in_hour = 60
	days_in_year * hours_in_day * minutes_in_hour
end

puts "There are #{minutes_in_year} minutes in a year."

=begin 
3-8: the method, minutes_in_year, is declared and we then assign particular values to their
     corresponding variable. at the end of the method is an expression which multiplies
     all values to give us our desired output.
10:  We output a string which carries one interpolation, the output from our method
     minutes_in_year.

=end