Z_CODE = "Z".ord
A_CODE = "A".ord

LOWER_A = "a".ord
LOWER_Z = "z".ord

LETTERS = 26

def is_letter?(char)
  (char.ord >= LOWER_A && char.ord <= LOWER_Z) || (char.ord >= A_CODE && char.ord <= Z_CODE)
end

def wrap_ord(min, max, new_ord)
  if new_ord > max
    new_ord = (new_ord - min) % LETTERS + min
  elsif new_ord < min
    new_ord = max - (min - new_ord - 1) % LETTERS
  end
  new_ord
end

def move_letter(char, movements)
  new_ord = char.ord + movements

  uppercase = char == char.upcase

  min, max = uppercase ? [A_CODE, Z_CODE] : [LOWER_A, LOWER_Z]
  new_ord = wrap_ord(min, max, new_ord)

  new_ord.chr
end

def caesar_cipher(string_to_cipher, movements)
  string_to_cipher.split('').map do |char|
    is_letter?(char) ? move_letter(char, movements) : char
  end.join('')
end


string_to_cipher = ARGV[0]  # "What a string!"
movements = ARGV[1].to_i    # 5

# Validate string.
if string_to_cipher.nil? || string_to_cipher.empty?
  puts "Please provide a string to cipher."
  exit
end

p caesar_cipher(string_to_cipher, movements)  # "Bmfy f xywnsl!"
