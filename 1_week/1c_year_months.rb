# This program will request your age in seconds and output your age in years and months.
# STILL IN PROGRESS


def age_yearsMonths(age_in_seconds)
	age_in_years = age_in_seconds / (60 * 60 * 24 * 365.25)
	years = age_in_years.floor # or round? hmm
	months = ((age_in_years - years) * 12).floor
	[years, months]
end

givenValues = [979000000, 2158493738, 246144023, 1270166272, 1025600095]
givenValues.each do |valueIteration|
  answer = age_yearsMonths(valueIteration)
  puts ("You are %s years and %s months old") % [answer[0], answer[1]]
end


=begin

Array values are separated by newline characters, this is messing
with my output.. There must be another way.

print "Please enter your age in seconds: "
 ageInput = gets.chomp.to_f
 answer = age_yearsMonths(ageInput)
 output = "You are #{answer[0]} years and #{answer[1]} months old; you have #{12 - answer[1]} months to go until you turn #{answer[0] + 1}"
puts output

puts age_yearsMonths(47336400)
puts age_yearsMonths(63115200)


-------------------------------------------------------------------------------------------

Second Time's a charm, the lines were outputted with both array values

Lines 5-10:   the method age_yearsMonths is declared
              expression converts age in seconds to age in years
              this expression rounds down the float
              age_in_years is subtracted by it's rounded version in order to obtain the value months
              we return two values to main and end

Lines 12-16:  declare givenValues array with values provided
              explicitly telling the array to go through each iteration using valueIteration as the referenced object
              each iteration, valueIteration is used as an argument in age_yearsMonths and is assigned to answer
              we use the Kernel method in order to output a formatted string

              I'm getting the hang of this.
=end