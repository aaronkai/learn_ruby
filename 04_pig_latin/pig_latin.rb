#write your code here
def translate(word_or_phrase)

	def phrase_to_words(phrase)
		if phrase.include? " "
			phrase.split
		else
			[phrase]
		end
	end

	def count_consonants(word)
		vowels = ["a","e","i","o","u"]
		counter = 0
		word.split("").each do |letter|
			if vowels.include? letter
				counter
				break
			elsif letter == "q"
				counter = counter + 2
			else 
				counter = counter + 1
			end	
		end	
		counter
	end
	
	def word_to_pig_latin(word)
		#puts "process word is #{word}"
		split_word = word.split("")
		beginning = split_word.shift(count_consonants(word))
		split_word.push(beginning)
		split_word.join+"ay"
	end	
		
	final_phrase = ""
	phrase_to_words(word_or_phrase).each { |word|	final_phrase = final_phrase + word_to_pig_latin(word) + " "}
	final_phrase.strip
end

# puts translate("schell butter")