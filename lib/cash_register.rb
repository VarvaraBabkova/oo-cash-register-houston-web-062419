class CashRegister

  attr_accessor :total, :discount, :items

  def initialize ( discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @total = @total * (100 - @discount)/100
    "After the discount, the total comes to $#{@total}."
  end

  def items
  end
end
