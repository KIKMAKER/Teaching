def display_list(array)
  array.each_with_index do |item, index|
    # HUMANISING THE ARRAY INDEX
    puts "#{index + 1} [#{item[:bought] ? 'X' : ' '}] #{item[:name]}"

  end
end
