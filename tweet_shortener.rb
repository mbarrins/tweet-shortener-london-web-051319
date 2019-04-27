def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for, four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split(" ").map {|word| dictionary.include?(word) ? dictionary[word] : word}.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each{|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    selective_tweet_shortener(tweet)[0..137] << "..."
  else
    selective_tweet_shortener(tweet).length
  end
end
