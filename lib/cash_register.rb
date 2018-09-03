class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
  end
  
  def add_item(item, price, what_is_this = 0)
    self.total += price
  end
end
