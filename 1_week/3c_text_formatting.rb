def border(number, line_length, decorator = nil)
  ((decorator.to_s * number * (line_length + 1)) << "\n")
end

def multiplication_table(integer, heading = ' ', decorate = nil)
  line_length = ((integer * integer).to_s.length)

  table = '' #default value
  table << heading << "\n" unless heading.empty?
  table << border(integer, line_length, decorate).to_s if  decorate
  if integer == 0
    table << " 0\n"
  else
    (1..integer).each do |x|
      (1.. integer).each do |y|
        table << "%#{line_length.next}d" % (x * y)
      end
      table << "\n"
    end
  end

  table << border(integer, line_length, decorate).to_s if decorate

  table.to_s
end

if __FILE__ == $PROGRAM_NAME
  [
    multiplication_table(9, 'Times Table to 9', '='),
    multiplication_table(20),
    multiplication_table(1, '1x1', '+'),
    multiplication_table(0, '0x0', '-'),
  ].each do |table|
    puts table
    puts
  end

end
