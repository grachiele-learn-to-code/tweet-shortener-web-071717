# Write your code here.

def dictionary
#  "hello" becomes 'hi'
#  "to, two, too" become '2'
#  "for, four" become '4'
#  'be' becomes 'b'
#  'you' becomes 'u'
#  "at" becomes "@"
#  "and" becomes "&"
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

  dictionary
end

def word_substituter(tweet)
  tweet_words = tweet.split(" ")
  words = dictionary

  tweet_words.each_with_index do |word, idx|
    if words.keys.include?(word.downcase)
      tweet_words[idx] = words[word.downcase]
    end
  end
  tweet_words.join(" ")
end

def bulk_tweet_shortener(tweets)
  shortened = tweets.map {|e| word_substituter(e)}
  shortened.each {|short| puts short}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  new_tweet = word_substituter(tweet)
  new_tweet[0..139]
end
