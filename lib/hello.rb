# 1: give method an argument
def hello_t(array)
  # refactor #hello_t so that it can be called either with or without a block
  if block_given?
    # 2: enact an iteration with while
    i = 0

    while i < array.length
      # 3: yield to the block
      yield(array[i])
      i = i + 1
    end
    # 5: pass the test by letting #hello_t return the original array
    array
  # refactor #hello_t so that it can be called either with or without a block
  else
    puts "Hey! No block was given!"
  end
end

# 4: call the method
# hello_t(["Tim", "Tom", "Jim"]) do |name|
#   if name.start_with?("T")
#     puts "Hi, #{name}"
#   end
# end
