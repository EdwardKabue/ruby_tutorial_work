print "Enter the string of integers"
intstring=gets.chomp

numarray=intstring.split(" ")
numbertostringmap={"0"=>"zero","1"=>"one","2"=>"two","3"=>"three","4"=>"four","5"=>"five","6"=>"six","7"=>"seven","8"=>"eight","9"=>"nine"}

holder=""
numarray.each do |x|
	numbertostringmap.each do |key, value|
		if key==x
			x=numbertostringmap[key]
			holder+=x
		end	 
	end
end

print holder		
