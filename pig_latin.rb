# PIG LATIN CHALLENGE

# For this challenge, you'll need to encode sentences into pig latin, and also decode them.

# You'll need to write two methods: one to encode, and one to decode.

# Examples:

# "ruby rules" becomes "ubyray ulesray"
# "go blackhawks" becomes "ogay lackhawksbay"
# "apples are happy fruit" becomes "applesay areay appyhay ruitfay"

# Encoding rules are widely debated, so here are some simple ones to get us started:

# 1. If a word starts with a consonant, move it to the end of the word, and then add "ay"
# 2. If a word starts with a vowel, simply add "ay" to the end of the word.

# After you can encode, try to decode!

# ----------------------------------------------------

# If you want to get fancy, try one or more of these:

# 3. If a word starts with a consonant cluster, like "challenge", move the cluster: "allengechay"
# 4. If a word starts with a Y, consider it to be a consonant, but all other Ys are vowels.
# 5. The entire rulebook at http://en.wikipedia.org/wiki/Pig_Latin#Rules

# Here are some sentences to get you started:

# address = "Four score and seven years ago our fathers brought forth on this continent a new nation, conceived in liberty, and dedicated to the proposition that all men are created equal."
# ruby = "Ruby gives us lots of data containers to choose from"

# oodgay ucklay!
Alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
Vowels = %w[a e i o u]
Consonants = %w[b c d f g h j k l m n p q r s t v w x y z]

def translate_into_latin(word)

  if Vowels.include?(word[0])
    word + 'ay'
  elsif Consonants.include?(word[0]) and Consonants.include?(word[1])
    word[2..-1] + word[0..1] + 'ay'
  else Consonants.include?(word[0])
    word[1..-1] + word[0..0] + 'ay'
  end
end

puts ""
puts '='*128
puts 'PIG LATIN TRANSLATOR CHALLENGE'.center(128)
puts '='*128
puts ""
puts "Enter English text to translate"
text = gets.chomp
puts ""
puts 'Here is its translation into pig latin'
puts text.split.map(&method(:translate_into_latin)).join(" ")
puts ""
puts '='*128
puts 'END OF PROGRAM'.center(128)
puts '='*128
puts ""
