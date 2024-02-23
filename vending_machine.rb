class VendingMachine
    attr_reader :inventory
  
    def initialize
      @inventory = 20 
    end
  
    def purchase(minus_drinks)
      @inventory -= minus_drinks if minus_drinks <= @inventory
    end
  
    def restock(plus_drinks)
      @inventory += plus_drinks
    end
  end
  