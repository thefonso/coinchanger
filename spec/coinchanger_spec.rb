require 'coinchanger'

describe CoinChanger do
  
  let (:cc) {CoinChanger.new}
  
  describe "making change" do
    it "should be able to return an array of 1 given the requested to make change for 1" do
      cc.make_change(1).should == [1]
    end
  
    it "should retrun an array with 5 and 1 given a value of 6" do
      cc.make_change(6).should == [5,1]
    end
      
    it "should be able to return an array of with 10 and 1 when given a value of 11" do
      cc.make_change(11).should == [10,1]
    end  
    
    it "should be able to return an array of with 10, 5 and 1 when given a value of 16" do
      cc.make_change(16).should == [10,5,1]
    end 
    
    it "should be able to return an array of with 25 and 1 when given a value of 26" do
      cc.make_change(26).should == [25,1]
    end 
  end
  
  # describe "calculating coin amounts" do
  #   it "calculate_pennies" do
  #     cc.calculate_coins(1,1).should == [1]
  #   end
  # 
  #   it "calculate_nickels" do
  #     cc.calculate_coins(5,5).should == [5]
  #   end
  # 
  #   it "calculates dimes" do
  #     cc.calculate_coins(10,10).should == [10]
  #   end
  # 
  #   it "calculates quarters" do
  #     cc.calculate_coins(25,25).should == [25]
  #   end
  # end
end