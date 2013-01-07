class CoinChanger

  def initialize
    @change =[]
  end
  
  
  def make_change(amount)
    change_array = [25,10,5,1]
    @initial_amount = amount
    
    change_array.each do |coin_amount|
      while amount >= coin_amount
        @change << coin_amount
        amount -= coin_amount
      end
    end
    return @change
  end
  
  
end

