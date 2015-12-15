puts "Welcome to the most amazing pizza store ever"
puts "What would you like to order?"
order = gets
puts "How many would you like?"
quantity = gets.chomp.to_i
total =  18 * quantity
puts "Your total is $" + total.to_s

