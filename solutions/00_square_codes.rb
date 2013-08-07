def square_codes(str)
  return "" if str.to_s.empty?

  str = str.gsub(/\s/, '')
  str_len = str.size

  # Compute the length of each side of the containing square.
  # E.g., 3-char string with have 2-sided square.
  side_len = Math.sqrt(str_len).ceil
  
  # This is the kind of weird way to do 2-dimensional arrays in Ruby.
  # Note that the block being passed into the first Array constructor
  # is a default-initialization block, initializing each element in
  # the first array with another array, and the elements in that _second_
  # array are default-initialized with an empty string.
  grid = Array.new(side_len) { Array.new(side_len, "") }

  counter = -1
  (0...side_len).each do |col|
    (0...side_len).each do |row|
      grid[row][col] = str[counter += 1]
    end
  end

  ret = ""
  grid.flatten.each_slice(side_len) { |slice| ret << slice.join("") << " " }

  ret.strip
end