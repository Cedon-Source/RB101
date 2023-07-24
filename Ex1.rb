def string_lengths(sentence)
  strings = sentence.split

  p strings.map { |chars| chars.length }
  
end

string_lengths("To be or not to be")