class CashRegister
  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity=1)
    @items << title if !@items.include?(title)
    @total += price*quantity
  end
    
  def apply_discount
    if @discount != 0
      @total = (1-(0.01 * @discount))*@total
    else
      
    end
  end
  
  def void_last_transaction
  end
end