#write your code here
def echo(sound)
	sound
end

def shout(sound)
	sound.upcase
end

def repeat(word, number=2)
		("#{word} ")*(number-1) + word		
end

def start_of_word(word, number)
	word[0...number]
end

def first_word(phrase)
	phrase.split[0]
end

def titleize(phrase)
	old_phrase = phrase.split
	new_phrase = []
	little_words = ['and','the','over']
	new_phrase << old_phrase.shift.capitalize 
	old_phrase.each do |word| 
		unless (little_words.include? word)
			new_phrase << word.capitalize
		else
			new_phrase << word
		end
	end
	new_phrase.join(' ')
end