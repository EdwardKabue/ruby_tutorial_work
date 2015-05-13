puts "Enter the space separated integers"
string_array=gets.chomp

string_array=string_array.split(" ").sort!{|a,b|a<=>b}

for i in 0...string_array.length
	string_array[i]=string_array[i].to_i
end

frequency_getter=Hash.new(0)
frequency_holder=[]
x_plot=[]

string_array.each do |value|
	frequency_getter[value]+=1
	frequency_holder<<frequency_getter[value]
end	

frequency_getter.each do |key, value|
	x_plot<<key
end	

greatest=0

for i in 0...frequency_holder.length
	if frequency_holder[i]>greatest
		greatest=frequency_holder[i]
	end
end

for j in 0..greatest
	print "#{greatest-j}"
		for l in 0...x_plot.length
			if frequency_getter[x_plot[l]]==greatest-j
				print "*"
				elsif frequency_getter[x_plot[l]]!=greatest-j&&l==0
					print "|"
				elsif frequency_getter[x_plot[l]]!=greatest-j&&l>0&&j<greatest
					print " "
				elsif frequency_getter[x_plot[l]]!=greatest-j&&j==greatest
					print "_"
			end	
		end
	puts
end
print " "
x_plot.each do |m|
	print "#{m}"
end	
puts