require 'active_support/all'

require 'flt'
require 'flt/d'

require_relative '../lib/finance/amortization.rb'
require_relative '../lib/finance/cashflows.rb'
require_relative '../lib/finance/rates.rb'
require_relative '../lib/finance/transaction.rb'
include Finance

describe "Cashflows" do
	before :each do
    @xactions=[]
    @xactions << Transaction.new(-1000, :date => Time.new(1985, 1, 1))
    @xactions << Transaction.new(  600, :date => Time.new(1990, 1, 1))
    @xactions << Transaction.new(  600, :date => Time.new(1995, 1, 1))
	end
	describe '#xirr' do
		it "should accept interest rate parameter" do
			@xactions.should_receive(:nlsolve).with(anything(), [0.5])
			@xactions.xirr(100, 0.5)
		end
	end
end