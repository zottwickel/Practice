def stock_picker(arr)
	has = {}
	arr.each_index do |x|
		arr.each_index do |y|
			next unless y > x
			has[arr[y] - arr[x]] = [x,y]
		end
	end
	has[has.keys.max]
end