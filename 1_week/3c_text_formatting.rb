=begin
So, you may note that the method only takes one number. That is so there is no
question about a YxY grid.

This one has been out there for a little while, it is a common problem with
writing reports, etc.

What the challenge is write a program that provides the following output, with
the following sample of use.

The output is shown first, I will make some notes about it to pay attention to
below:

You hopefully notice that there is a space in column 1 (or column 0 if you are
a computer) for the optional heading in the first output sample. It was the
reason I left the “Press ENTER or type command to continue, was to demonstrate
the spacing. The prompt to continue is NOT part of the challenge.

Here is the sample use, which dictates the method name, the valid inputs for
the table, the optional arguments, etc. Of course, any questions are welcome.

Here are the rules:

Required: method needs to provide an object. Don’t just print to screen, it
isn’t the goal.

The method needs to accept an Integer.
Required: the table object should have uniform spacing throughout the table.

Optional: You should be able to decorate the table with and without a heading
and with and without decoration when asked for.

Preferred but optional: The heading may be Centered to the table, and the
decoration (if the decoration is there). The decoration should hang one space
(on each side) over the area taken by the numeric matrix. The heading should be
on or within the same guide. (As shown in the 9x9 grid).

The goal here is having uniform columnar formatting, regardless of the result
of the (valid) input. Everything else is ‘extra’ (and fun!).

Oh, only two samples were given, but, it should be able to handle decoration
without heading, or heading without decoration, or both (as shown) or neither
(as also shown). This part of it is the extra fun part.

Oh, a side note… You CAN copy and paste the sample solution for the 9x9 grid,
and use that as test data, exactly as posted here (taking into account the “\n”
that must exist as the last character of each line.

That is if you are using minitest (built into Ruby 2), or Test::Unit or Rspec
or something other.
=end

# doctest: Multipliation Table 2 will return a 2 by 2 grid
# >> IO.read('1_week/3t_formatted_text.txt') == multiplication_table(2)
# => true


# returns a string, that is in the form of:
# * Some Kind of Title: optional
# * Some kind of decoration: optional
#
#     Times Table to 5
#     ++++++++++++++++
#       1  2  3  4  5
#       2  4  6  8 10
#       3  6  9 12 15
#       4  8 12 16 20
#       5 10 15 20 25
#     ++++++++++++++++
#
# Example of use:
#     multiplication_table 5, true, '+'
#
# or we could have the same table generated with this:
#     multiplication_table integer: 5, table: true, decoration: '+'
def multiplication_table(
  int=10, tbl = false, deco = nil,
  integer: int, table: tbl, decorator: deco
)
  spacing = (integer**2).to_s.length + 1 # creates spacing intervals
  decorator = decorator.to_s * ((integer * spacing) + 1) if decorator
  result = ''
  result << "Times Table to #{integer}\n" if table
  result << decorator.to_s + "\n" if decorator
  1.upto(integer) do |x|
    1.upto(integer) do |y|
      result << "%#{spacing}d" % [x * y]
    end
    result << "\n"
  end
  result << decorator + "\n" if decorator
  result << "\n"
  result
end

if __FILE__ == $PROGRAM_NAME
  [
    multiplication_table(1, decorator: '='),
    multiplication_table(decorator: '-', table: true, integer: 2),
    multiplication_table(5, true, '+'),
  ].each do |table|
    puts table
  end
end

