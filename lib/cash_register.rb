class CashRegister
  attr_accessor :total, :discount
  @items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(total, price, quantity = 1)        #set optional quantity for a minimum of 1
    @total += price * quantity                    #minima default quantity of 1, aditional quantity will be added to the price.
  end

  def apply_discount
    if @discount > 0
      @total = (@total - @total * @discount.to_f / 100)               #to_f makes it a floating number
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end


end


cash_register = CashRegister.new
