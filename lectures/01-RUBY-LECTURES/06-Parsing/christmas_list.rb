def christmas_list(gift_list)
  gift_list.each_with_index do |gift, index|
    # each gift is now a hash: { name: "wool", bought: false }
    # 2 - [X] ruby book
    # if gift[:bought]
    #   status = 'X'
    # else
    #   status = ' '
    # end
    puts "#{index + 1}. [#{gift[:bought] ? 'X' : ' '}] #{gift[:name]}"
  end
end
