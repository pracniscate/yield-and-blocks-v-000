# 1: give method an argument
def hello_t(array)
  # 2: enact an iteration with while
  i = 0

  while i < array.length
    # 3: yield to the block
    yield array[i]
    i = i + 1
  end
end

# 4: call the method
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
