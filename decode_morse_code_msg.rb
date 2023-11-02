#!/usr/bin/ruby -w

MORSE_CODE_TO_CHAR = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(morse)
  (MORSE_CODE_TO_CHAR[morse]) || morse
end

def decode_word(morse)
  morse_char = morse.split(' ')
  decode_word = ''
  morse_char.each { |i| decode_word << decode_char(i) }
  decode_word
end

def decode(morse)
  morse_str = morse.split('   ')
  decode_str = ''
  morse_str.each { |i| decode_str << decode_word(i) + ' ' }
  decode_str
end

print("#{decode('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')}\n")
