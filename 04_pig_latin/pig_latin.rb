def translate(phrase)
	words = phrase.split(/\W/)
	p words
	pig_latin = []
	words.each do |word|
		#test for capitalization
		is_uppercase = false
		is_uppercase = true if(word.eql?(word.capitalize))

		#find index first vowel	
		first_vowel = word.index(/[aAeEiIoOuU]/)

		#translate treating "qu" as single block
		if(first_vowel == 0) 
			word = word + "ay"
		elsif(word[first_vowel-1..first_vowel].eql?("qu"))
			word = word[first_vowel+1..-1] + word[0..first_vowel] + "ay"
		else
			word = word[first_vowel..-1] + word[0..first_vowel-1] + "ay"
		end

		#fix capitalization if original word was capitalized
		word.downcase!.capitalize! if(is_uppercase)

		pig_latin << word
	end
	return pig_latin.join(" ")
end