class BubbleSort
	def sort(data)
		made_a_change = true

		while made_a_change
			made_a_change = false
			original = data.dup
			data = sorting_pass(data)

			if data != original
				made_a_change = true
			end
		end

		return data
	end

	def sorting_pass(data)
		previous = 0
		current = 1

		while current < data.length do 
			data = maybe_swap(data, previous, current)
			previous += 1
			current += 1 
		end
		return data
	end

	def maybe_swap(data, first_position, second_position)
		if data[first_position] && data[second_position]
			if data[first_position] > data[second_position]
				temp = data[first_position]
				data[first_position] = data[second_position]
				data[second_position] = temp
			end
		end
		return data
	end
end