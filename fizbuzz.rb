def fizzbuzz
	print "Enter the upper limit of your range "
	fb=gets.chomp.to_i
	for i in 1..fb
		if i%5==0&&i%3==0
			print "fizzbuzz "
		elsif i%3==0
			print "fizz "
		elsif i%3

		else
			print "#{i} "	
		end
	end
end
fizzbuzz		

			
			