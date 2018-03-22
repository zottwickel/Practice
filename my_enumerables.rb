module Enumerable

	def my_each
		x = 0
		self.length.times do 
			yield self[x]
			x += 1
		end
	end
	def my_each_with_index
		x = 0
		self.length.times do
			yield(self[x], x)
			x += 1
		end
	end
	def my_select
		x = 0
		arr = []
		while x < self.length
			arr.push(self[x]) if yield(self[x])
			x += 1
		end
		arr
	end
	def my_all?
		stmt = true
		self.my_each do |x|
			stmt = false unless yield(x)
		end
		stmt
	end
	def my_none?
		stmt = false
		self.my_each do |x|
			stmt = true unless yield(x)
		end
		stmt
	end
	def my_count
		n = 0
		self.my_each do
			n += 1
		end
		n
	end
	def my_map(proc=false)
		n = 0
		rslt = []
		self.my_each do
			if proc
				rslt.push(proc.call(self[n]))
			else
				rslt.push(yield(self[n]))
			end
			n += 1
		end
		rslt
	end
	def my_inject(a=0)
		rslt = a
		self.my_each do |y|
			rslt = yield(rslt,y)
		end
		rslt
	end

end
