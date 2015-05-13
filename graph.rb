puts "Enter the space separated integers"
string_array=gets.chomp

string_array=string_array.split(" ").sort!{|a,b|a<=>b}

for i in 0...string_array.length
	string_array[i]=string_array[i].to_i
end

greatest=0

for i in 0...string_array.length
	if string_array[i]>greatest
		greatest=string_array[i]
	end
end

for j in 0..greatest
		for l in 0...string_array.length
			if string_array[l]==greatest-j
				print "*"
				elsif string_array[l]!=greatest-j&&l==0
					print "|"
				elsif string_array[l]!=greatest-j&&l>0&&j<greatest
					print " "
				elsif string_array[l]!=greatest-j&&l>0&&j==greatest
					print "_"
			end	
		end
	puts
end				   		   	