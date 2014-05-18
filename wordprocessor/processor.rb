def readFile(file)
  open_file = File.open(file)
  file = open_file.read
  open_file.close
  file #value returned by this function
end

readtext = readFile("file1.txt")

def character_count(text)
 text.length
end

def word_count(text)
  text.split(" ").count
end

def number_of_lines(text)
  text.lines.count
end
  
def paragraph_count(text)
  text.split(/\n\n/).count
end

def sentence_count(text)
  text.split(/\.|\?|\!/).count
end

def average_words_per_sen(text)
  word_count(text)/sentence_count(text)
end  

def average_no_of_sentences_per_paragragh(text)
  sentence_count(text)/paragraph_count(text)
end   
 
print "number of characters: "
puts character_count(readtext)

print "number of words: "
puts  word_count(readtext)

print "number of lines: "
puts number_of_lines(readtext)

print "number of paragraphs: "
puts paragraph_count(readtext)

print "number of sentences: "
puts sentence_count(readtext)

print "average words per sentence: "
puts average_words_per_sen(readtext)

print "average number of sentences per paragraph: "
puts average_no_of_sentences_per_paragragh(readtext)
