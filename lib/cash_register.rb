class CashRegister
  attr_accessor :total, :discount, :last_transaction_amount
  attr_reader :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    
    quantity.times do 
      self.items << item
    end
    
    # This RETURNS the same as above, but it only adds item to @items ONCE:
    # (self.items << item) * quantity
  end
  
  def apply_discount 
    if self.discount > 0
      self.total -= (discount.fdiv(100) * total).to_i
      "After the discount, the total comes to $#{self.total}."
    else 
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction 
    
  end
  
end
