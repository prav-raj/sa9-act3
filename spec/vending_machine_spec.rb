require_relative '../vending_machine'

RSpec.describe VendingMachine do
  describe '#purchase' do
    it 'decreases the inventory by the number of drinks purchased' do
      machine = VendingMachine.new
      machine.purchase(5)
      expect(machine.inventory).to eq(15)
    end

    it 'does not decrease inventory below 0' do
      machine = VendingMachine.new
      machine.purchase(25) 
      expect(machine.inventory).to eq(20)
    end
  end

  describe '#restock' do
    it 'increases the inventory by the number of bottles restocked' do
      machine = VendingMachine.new
      machine.restock(2)
      expect(machine.inventory).to eq(22)
    end
  end
end