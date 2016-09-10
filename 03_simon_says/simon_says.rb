def echo(phrase) 
  return phrase
end

def shout(phrase)
  return phrase.upcase
end

def repeat(phrase, amount = 2)
  return ("#{phrase} " * amount).strip
end

def start_of_word(word, length = 1)
  return word[0..length-1]
end

def first_word(phrase)
  return phrase.partition(" ")[0]
end

def titleize(title)
  little_words = ["the", "or", "and", "over", "a", "an"]
  words_in_title = title.split(" ")
  words_in_title.each_with_index do |word, index| 
    if(!little_words.include?(word.downcase) || index == 0)
      word.capitalize!
    end
  end
  words_in_title.join(" ")
end