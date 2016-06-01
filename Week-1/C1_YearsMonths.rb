# This program will request your age in seconds and output your age in years and months.
# STILL IN PROGRESS


def age_yearsMonths(age_in_seconds)
	age_in_years = age_in_seconds / (60 * 60 * 24 * 365)
	years = age_in_years.floor
	months = ((age_in_years - years) * 12).floor
	[years, months]
end


print "Please enter your age in seconds: "
 ageInput = gets.chomp.to_i
 answer = age_yearsMonths(ageInput)
 puts "You are #{answer[0]} years and #{answer[1]} months old; you have #{12 - answer[1]} months to go until you turn #{answer[0] + 1}"
