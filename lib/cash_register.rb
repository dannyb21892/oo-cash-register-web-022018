class CashRegister
  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end
  
  def discount
    @discount
  end
  
attr_accessor :total
  
  def add_item(title, price, quantity=1)
    @items << title if !@items.include?(title)
    @total += price*quantity
  end
    
  def apply_discount
    if @discount != 0
      @total = (1-(0.01 * @discount))*@total
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
  end
end