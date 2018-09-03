class CashRegister
  attr_accessor :total, :discount
  attr_reader :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    self.items << item
  end
  
  def apply_discount 
    if self.discount > 0
      self.total -= (discount.fdiv(100) * total).to_i
      "After the discount, the total comes to $#{self.total}."
    else 
      "There is no discount to apply."
    end
  end
  
end
