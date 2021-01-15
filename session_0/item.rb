# Code By: Akshay Jain

class Item
  CATEGORIES = {
    1 => 'Electronics/Gadgets',
    2 => 'Books',
    3 => 'Furniture',
    4 => 'Miscellaneous'
  }

  attr_accessor :name, :price, :category_id, :discount_rate,
<<<<<<< HEAD
    :discount_deadline, :quantity, :current_price
=======
    :discount_deadline, :quantity
>>>>>>> upstream/session_0_solution

  def initialize(name: '', price: 0, quantity: 1, category_id: 4,
                 discount_rate: 0, discount_deadline: Time.now)
    @name = name
    @price = price
    @category_id = category_id
    @discount_rate = discount_rate
    @discount_deadline = discount_deadline
    @quantity = quantity
  end

  # Returns a boolean value whether than item is discounted i.e. the
  # discount deadline has been crossed or not.
  def discounted?
<<<<<<< HEAD
    if discount_deadline < Time.now
      return false
    else
      return true
    end
=======
    Time.now <= discount_deadline
>>>>>>> upstream/session_0_solution
  end

  # If the item is discounted, the current price is 
  # `price * (100 - discount rate) / 100`. Otherwise, it is same as the price.
<<<<<<< HEAD
  #
  # TODO: Implement instance method 'current_price'
  def current_price
    if discounted?
      current_price = price * (100 - discount_rate) / 100
    else
      current_price = price
    end
=======
  def current_price
    discounted? ? price * (100 - discount_rate)/100 : price
>>>>>>> upstream/session_0_solution
  end

  # The stock price of item is defined as product of current price and
  # quantity.
  # 
  # This function takes an Array of items as the parameter and returns
  # a hash with the category id as the key and sum of stock
  # prices of all items of that category as the value.
  #
  # Note: If there are no items for category, stock price for category
  # should be zero.
  def stock_price
    current_price * quantity
  end

  def self.stock_price_by_category(items)
<<<<<<< HEAD
    stock_hash = {}
    for id, val in CATEGORIES
      stock_hash[id] = 0
    end

    for item in items
      c_id = item.category_id
      stock_price = item.current_price * item.quantity
      stock_hash[c_id] += stock_price
    end

    return stock_hash
=======
    # .keys method returns an array containing keys of CATEGORIES hash
    # .to_h coverts the returned keys array into hash with the array values as keys (category_id) and zero as value.
    stock_prices = CATEGORIES.keys.to_h { |category_id| [category_id, 0] }
    
    # We now iterate over every item in the items array
    # more about each can be found here https://www.tutorialspoint.com/ruby/ruby_iterators.htm
    items.each do |item|
      # Add price of individual items to the the stock price of coresponding category_id
      stock_prices[item.category_id] += item.stock_price
    end
    # implicitly return stock prices
    stock_prices
>>>>>>> upstream/session_0_solution
  end

end
