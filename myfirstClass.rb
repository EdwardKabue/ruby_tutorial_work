class Person
	def twoeyes
		puts "I have two eyes"
	end
	def nose
		puts "I have a nose"
	end
	def mouth
		puts "I have mouth as well"
	end
end

edward = Person.new
edward.twoeyes
edward.nose
laura = Person.new
laura.mouth
laura.twoeyes 
