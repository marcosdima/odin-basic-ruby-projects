def substrings(target, dictionary)
  # Just in case, set dictionary words as downcase.
  dictionary.map! { |word| word.downcase }
  
  # Split target words.
  target.downcase.split(' ').reduce(Hash.new(0)) do |result, target_word|
    # Target word as array of chars.
    target_chars = target_word.chars

    # Take words from dictionary that are substrings of target word and count them.
    dictionary.filter { 
      |word| word.downcase.chars - target_chars == []
    }.each {
      |word| result[word] += 1
    }

    # Return result for next iteration.
    result
  end
end

dictionary = ARGV[0] ? ARGV[0].split(',') : ["below","down","go","going","horn","how","howdy","it","I","low","own","part","partner","sit"]
word_to_check = ARGV[1] ? ARGV[1] : "Howdy partner, sit down! How's it going?"

p substrings(word_to_check, dictionary)