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
  morse_char = morse.split
  decode_word = ''
  morse_char.each { |i| decode_word << decode_char(i) }
  decode_word
end

def decode(morse)
  morse_str = morse.split('   ')
  morse_str.map { |i| decode_word(i) }.join(' ')
end

print("\n #{decode('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')}\n\n")

print("\n #{decode('      .... . .-.. .-.. ---   -- .. -.-. .-. --- ...- . .-. ... .')}\n\n")
