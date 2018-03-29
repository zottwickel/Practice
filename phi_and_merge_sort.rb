def fibs(num)
	if num == 0
		arr = []
	elsif num == 1
		arr = [0]
	else
		arr = [0,1]
		(num - 2).times do
			arr << (arr[-1] + arr[-2])
		end
	end
	arr.join("\n")
end

def fibs_rec(num)
	if num <= 2
		return num == 2 ? [0,1] : [0]
	else
		arr = fibs_rec(num - 1)
		return arr << arr[-1] + arr[-2]
	end
end

def merge_sort(arr)
	if arr.size < 2
		return arr
	end
	l = merge_sort(arr[0...(arr.size / 2)])
	r = merge_sort(arr[(arr.size / 2)...(arr.size)])
	merge(l,r)
end

def merge(l,r)
	srt_arr = []
	until l.empty? || r.empty?
		srt_arr << if l.first <= r.first
			l.shift
		else
			r.shift
		end
	end
	srt_arr.concat(l).concat(r)
end


puts fibs(23)
puts fibs_rec(23)
testr = [3,42,21,35,1,47,10,49,4,11,36,41,16,13,34,20,26,28,39,5]
puts merge_sort(testr)