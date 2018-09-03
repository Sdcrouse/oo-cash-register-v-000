class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
  end
  
  def apply_discount 
    if self.discount == 0
      "There is no discount to apply."
    else 
      self.total -= (discount.fdiv(100) * total).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end
end
