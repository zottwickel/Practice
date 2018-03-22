def substrings(str, dic)
	final = {}
	dic.each do |x|
		num = str.scan(x).length
		if num != 0
			final[x] = num
		end
	end
	final
end