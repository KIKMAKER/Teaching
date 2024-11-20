# VARIABLES

cart = ["pen", "scissors", "ink", "poppies"]
xhantis_cart = ["incense", "flowers", "irises"]

users_orders = {
                "kiki" => cart,
                "Xhanti" => xhantis_cart
                }

# METHODS

# puts "You bought #{cart.join(', ')}"

def cart_items_beginning_with(starting_letter, cart)
  # return all the cart items that start with a given letter
  cart.select do |item|
    # state the condition on which elements should be selected
    item.start_with?(starting_letter)
  end

end

# p cart_items_beginning_with("p", cart)
# p cart_items_beginning_with("i", xhantis_cart)


# CRUD ON ARRAYS

# Create
cart << "chocolate"

# Read

# p cart[0]
# p cart[1]

# Update
cart[0] = "fountain pen"

# Delete
# cart.delete("fountain pen")
cart.delete_at(0)

p cart
# CRUD ON HASHES

# Create
users_orders["Ash"] = ["champaigne", "bubble bath", "gardening gloves"]

# Read
users_orders["Xhanti"] == xhantis_cart

# Update
users_orders["Ash"] = ["champaigne", "bubble bath", "gardening gloves", "hiking boots"]



# Delete
users_orders.delete("kiki")
p users_orders


# IF
# runs different code based on set conditions


# LOOP

# runs the same code over and over again until told to stop
# while runs WHILE a condition is true i.e until the condition is false
# until runs UNTIL a condition is true i.e while the condition is false
# loop do runs until the keyword "break"
