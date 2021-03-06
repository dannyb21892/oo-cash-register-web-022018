class CashRegister
  def initialize(discount=0)
    @discount = discount
    @total = 0
    @oldtotal = []
    @items = []
  end
  
  def discount
    @discount
  end
  
attr_accessor :total
  
  def add_item(title, price, quantity=1)
    quantity.times do 
      @items << title
    end
    @oldtotal << @total
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
  
  def items
    @items
  end
  
  def void_last_transaction
    @total = @oldtotal.pop
  end
end