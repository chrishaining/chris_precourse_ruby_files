=begin
This is a holding program for converting cm to feet and inches and inches to cm and metres and inches to feet. 
=end

puts "I can convert centimetres to inches, and vice versa. I can also do metres and feet, if you'd like. Select cm or in to start."
start_unit=gets.chomp
start_unit.downcase!
if start_unit == "cm" || start_unit == "in"
  puts "Cool. Now, what amount would you like to convert?"
  start_amount=gets.chomp.to_i
  start_amount.round(2)

  if start_unit == "cm"
    total_inches = (start_amount * 0.394).round(1)
    decimal_feet = (total_inches / 12).round(1) #or just total_inches
    feet = (total_inches / 12).to_i
    remainder = ((decimal_feet % 1) * 12).to_i
    puts "That's #{total_inches.to_i} inches, or #{feet} feet and #{remainder} inches."
  elsif start_unit == "in"
    centimetres = (start_amount * 2.54).round(1)
    puts "That's #{centimetres}. Or #{(centimetres / 100).round(1)} metres."
  end
else
    puts "It looks like you've entered an incorrect unit. Please rerun the program."
end
