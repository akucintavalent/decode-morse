# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength
def decode_char(cha)
  case cha
  when '.-'
    'A'
  when '-...'
    'B'
  when '-.-.'
    'C'
  when '-..'
    'D'
  when '.'
    'E'
  when '..-.'
    'F'
  when '--.'
    'G'
  when '....'
    'H'
  when '..'
    'I'
  when '.---'
    'J'
  when '-.-'
    'K'
  when '.-..'
    'L'
  when '--'
    'M'
  when '-.'
    'N'
  when '---'
    'O'
  when '.--.'
    'P'
  when '--.-'
    'Q'
  when '.-.'
    'R'
  when '...'
    'S'
  when '-'
    'T'
  when '..-'
    'U'
  when '...-'
    'V'
  when '.--'
    'W'
  when '-..-'
    'X'
  when '-.--'
    'Y'
  when '--..'
    'Z'
  else
    cha
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/MethodLength

def decode_word(str)
  res = ''
  str.split.each do |item|
    res += decode_char(item)
  end
  res
end

def decode(str)
  res = ''
  str.split('   ').each do |item|
    res += " #{decode_word(item)}"
  end
  res.strip
end

print decode_word('-- -.--')
print decode('-- -.--   -. .- -- .')
print decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
