def bubble_sort(arr)
	arr.each_index do |i|
		(i + 1..arr.length - 1).each do |j|
			arr[i], arr[j] = arr[j], arr[i] if arr[i] > arr[j]
		end
	end
end

def bubble_sort_by(arr)
	return unless block_given?
	arr.each_index do |i|
		(i + 1..arr.length - 1).each do |j|
			if yield(arr[i], arr[j]) > 0
				arr[i], arr[j] = arr[j], arr[i]
			end
		end
	end
end