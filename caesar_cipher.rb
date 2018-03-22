def caesar_cipher(str, v = 1)
	alph = Array('a'..'z')
	enc = Hash[alph.zip(alph.rotate(v))]
	str.chars.map { |x| enc.fetch(x, " ") }
end

#untested