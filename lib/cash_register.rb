
class CashRegister
  attr_reader :discount, :items
  attr_accessor :total

    def initialize (discount=20) #employee_discount
      @total = 0 
      @discount = discount
      @items = []
      #@employee_discount = employee_discount
    end

    def add_item(title, price, quantity = 1)
      #self.total += amount * quantity
      quantity.times do 
        @items << title
        end
      @last_total = @total 
        @total = total + price * quantity #also @total +=price
      #self.last_transaction = amount * quantity
    end

    def apply_discount 
      @total = @total - @total * @discount/100 #also @total -= @total *discount/100
      #price = price - (price * discount/100)  
      if @total == 0
        "There is no discount to apply."
      else
        "After the discount, the total comes to $#{@total}."
      end

      #ANOTHER SOLUTION: if discount != 0
      #self.total = (total * ((100.0 - discount.to-f)/100)).to_i
      #"After the discount, the total comes to $#{self.total}."
      #else
      #"There is no discount to apply.""
    end

    def void_last_transaction
      @total = @last_total 
    end

end