ALPHABET = ("A".."Z").to_a

def encrypt(text)
  # split string in to characters
  # create range uppercase tern in to array
  # iterate over the charcters with .map
  # find index of the characters
  # -3 for new index
  # find the new letter in the aphabet with new index
  # join array to string
  text.chars.map do |character|
    index = ALPHABET.index(character)
    index ? ALPHABET[index - 3] : character # space, comma, exclamation
  end.join
end
