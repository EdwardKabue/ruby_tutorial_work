print "Enter the first number "
a = gets.chomp.to_i

print "Enter the second number "
b = gets.chomp.to_i

if a < b
  puts "#{b} is greater than #{a}"  
elsif b < a
  puts  "#{a} is greater than #{b}"
else 
  puts "They are equal"  
end      
