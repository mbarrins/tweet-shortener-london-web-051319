def dictionary
  {
    "hello" => "hi",
    "to, two, too" => "2",
    "for, four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  # puts dictionary.inspect
  tweet.split(" ").map {|word| dictionary.include?(word) ? dictionary[word] : word}.join(" ")
end
