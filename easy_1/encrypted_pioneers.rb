=begin

Encrypted Pioneers

The following list contains the names of individuals who are pioneers in the field of computing or that have had a significant influence on the field. The names are in an encrypted form, though, using a simple (and incredibly weak) form of encryption called Rot13.

Write a program that deciphers and prints each of these names.
=end

# need to convert back to normal letters and check for case
require 'pry'

INDEX_SHIFT = 13

LOWER = ('a'..'z').to_a
UPPER = ('A'..'Z').to_a

def decrypt(str)
  decrypted = ''

  str.each_char do |char|

    # binding.pry

    if char == ' ' || char == '-'
      decrypted << char
      next
    end

    current_index = LOWER.index(char.downcase)
    index = (current_index + INDEX_SHIFT) % 26

    if LOWER.include?(char)
      decrypted << LOWER[index]
    elsif UPPER.include?(char)
      decrypted << UPPER[index]
    end
  end

  decrypted
end

names = ['Nqn Ybirynpr', 'Tenpr Ubccre', 'Nqryr Tbyqfgvar', 'Nyna Ghevat', 'Puneyrf Onoontr', 'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv', 'Wbua Ngnanfbss', 'Ybvf Unvog', 'Pynhqr Funaaba', 'Fgrir Wbof', 'Ovyy Tngrf', 'Gvz Orearef-Yrr', 'Fgrir Jbmavnx', 'Xbaenq Mhfr', 'Fve Nagbal Ubner', 'Zneiva Zvafxl', 'Lhxvuveb Zngfhzbgb', 'Unllvz Fybavzfxv', 'Tregehqr Oynapu']

names.each { |name| puts decrypt(name) }