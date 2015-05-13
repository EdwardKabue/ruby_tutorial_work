names=['njeri','martha','chelimo','chumo']

n=names.length

(0...n).each do|x|
	names[x].upcase!
end				 
puts names.rotate(1)