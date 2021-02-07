def snail(array)
  p array
  snail = []
  while !array.empty? do
    snail.push(array.shift)
    array_to_reverse = []
    array.each{ |row| snail << row.slice!(-1)}
    snail << array.pop.reverse
    array.each{ |row| array_to_reverse.push(row.shift) }
    snail << array_to_reverse.reverse!
    snail << array.shift
  end
  snail.flatten
end