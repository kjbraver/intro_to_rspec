class Book
  def title=(title)
    #specify words which are not capitalized in titles
    lowcase_words = ["and", "or", "the", "a", "an", "in", "of"]
    #break up title into individual words
    words_in_title = title.split
    #capitalize all words that aren't in lowcase_words or the first word of the title
    words_in_title.each_with_index do |word, index|
      word.capitalize! if(index == 0 || !lowcase_words.include?(word))
    end
    #join title and store in object's instance variable
    @title = words_in_title.join(" ")
  end

  def title
    @title
  end
end
