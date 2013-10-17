require 'active_support/all'

require 'flt'
require 'flt/d'

require_relative '../lib/finance/amortization.rb'
require_relative '../lib/finance/cashflows.rb'
require_relative '../lib/finance/rates.rb'
require_relative '../lib/finance/transaction.rb'
include Finance

describe "Cashflows" do
	describe '#xirr' do
		it "should accept initial rate parameter" do
	    xactions=[]
	    xactions << Transaction.new(-1000, :date => Time.new(1985, 1, 1))
	    xactions << Transaction.new(  600, :date => Time.new(1990, 1, 1))
	    xactions << Transaction.new(  600, :date => Time.new(1995, 1, 1))
			xactions.should_receive(:nlsolve).with(anything(), [0.5])
			xactions.xirr(100, 0.5)
		end

		it "returns correct value" do
			xactions = []
			xactions << Transaction.new(-21_302_400, date: Time.new(2013, 10, 17))
			xactions << Transaction.new(1_001_159, date: Time.new(2013, 11, 7))
			xactions << Transaction.new(1_002_147, date: Time.new(2013, 12, 9))
			xactions << Transaction.new(1_003_027, date: Time.new(2014, 1, 7))
			xactions << Transaction.new(1_003_950, date: Time.new(2014, 2, 7))
			xactions << Transaction.new(1_004_865, date: Time.new(2014, 3, 7))
			xactions << Transaction.new(1_005_821, date: Time.new(2014, 4, 7))		
			xactions << Transaction.new(1_006_762, date: Time.new(2014, 5, 7))
			xactions << Transaction.new(1_007_725, date: Time.new(2014, 6, 9))	
			xactions << Transaction.new(1_008_676, date: Time.new(2014, 7, 7))
			xactions << Transaction.new(1_009_679, date: Time.new(2014, 8, 7))
			xactions << Transaction.new(1_010_674, date: Time.new(2014, 9, 8))
			xactions << Transaction.new(1_011_675, date: Time.new(2014, 10, 7))
			xactions << Transaction.new(1_012_709, date: Time.new(2014, 11, 7))
			xactions << Transaction.new(1_013_745, date: Time.new(2014, 12, 9))
			xactions << Transaction.new(1_014_790, date: Time.new(2015, 1, 7))
			xactions << Transaction.new(1_015_865, date: Time.new(2015, 2, 9))
			xactions << Transaction.new(1_016_935, date: Time.new(2015, 3, 9))
			xactions << Transaction.new(1_018_041, date: Time.new(2015, 4, 7))
			xactions << Transaction.new(1_019_158, date: Time.new(2015, 5, 7))
			xactions << Transaction.new(1_020_286, date: Time.new(2015, 6, 8))
			xactions << Transaction.new(1_021_424, date: Time.new(2015, 7, 7))
			xactions << Transaction.new(1_022_584, date: Time.new(2015, 8, 7))	
			xactions << Transaction.new(1_023_756, date: Time.new(2015, 9, 7))	
			xactions << Transaction.new(1_024_944, date: Time.new(2015, 10, 7))
			expect(xactions.xirr(100, 0.15).effective.round(6)).to eq D("0.141088")
		end

		it "returns correct value" do
			xactions = []
			xactions << Transaction.new(-213024000, date: Time.new(2013, 10, 17))
			xactions << Transaction.new(10011590, date: Time.new(2013, 11, 7))
			xactions << Transaction.new(10021470, date: Time.new(2013, 12, 9))
			xactions << Transaction.new(10030270, date: Time.new(2014, 1, 7))
			xactions << Transaction.new(10039500, date: Time.new(2014, 2, 7))
			xactions << Transaction.new(10048650, date: Time.new(2014, 3, 7))
			xactions << Transaction.new(10058210, date: Time.new(2014, 4, 7))		
			xactions << Transaction.new(10067620, date: Time.new(2014, 5, 7))
			xactions << Transaction.new(10077250, date: Time.new(2014, 6, 9))	
			xactions << Transaction.new(10086760, date: Time.new(2014, 7, 7))
			xactions << Transaction.new(10096790, date: Time.new(2014, 8, 7))
			xactions << Transaction.new(10106740, date: Time.new(2014, 9, 8))
			xactions << Transaction.new(10116750, date: Time.new(2014, 10, 7))
			xactions << Transaction.new(10127090, date: Time.new(2014, 11, 7))
			xactions << Transaction.new(10137450, date: Time.new(2014, 12, 9))
			xactions << Transaction.new(10147900, date: Time.new(2015, 1, 7))
			xactions << Transaction.new(10158650, date: Time.new(2015, 2, 9))
			xactions << Transaction.new(10169350, date: Time.new(2015, 3, 9))
			xactions << Transaction.new(10180410, date: Time.new(2015, 4, 7))
			xactions << Transaction.new(10191580, date: Time.new(2015, 5, 7))
			xactions << Transaction.new(10202860, date: Time.new(2015, 6, 8))
			xactions << Transaction.new(10214240, date: Time.new(2015, 7, 7))
			xactions << Transaction.new(10225840, date: Time.new(2015, 8, 7))	
			xactions << Transaction.new(10237560, date: Time.new(2015, 9, 7))	
			xactions << Transaction.new(10249440, date: Time.new(2015, 10, 7))
			expect(xactions.xirr(100, 0.15).effective.round(6)).to eq D("0.141088")
		end

		it "returns correct value" do
			xactions = []
			xactions << Transaction.new(-213_024_000, date: Time.new(2013, 10, 17))
			xactions << Transaction.new(10_011_582, date: Time.new(2013, 11, 7))
			xactions << Transaction.new(10_021_461, date: Time.new(2013, 12, 9))
			xactions << Transaction.new(10_030_258, date: Time.new(2014, 1, 7))
			xactions << Transaction.new(10_039_489, date: Time.new(2014, 2, 7))
			xactions << Transaction.new(10_048_642, date: Time.new(2014, 3, 7))
			xactions << Transaction.new(10_058_204, date: Time.new(2014, 4, 7))		
			xactions << Transaction.new(10_067_615, date: Time.new(2014, 5, 7))
			xactions << Transaction.new(10_077_241, date: Time.new(2014, 6, 9))	
			xactions << Transaction.new(10_086_750, date: Time.new(2014, 7, 7))
			xactions << Transaction.new(10_096_787, date: Time.new(2014, 8, 7))
			xactions << Transaction.new(10_106_729, date: Time.new(2014, 9, 8))
			xactions << Transaction.new(10_116_739, date: Time.new(2014, 10, 7))
			xactions << Transaction.new(10_127_085, date: Time.new(2014, 11, 7))
			xactions << Transaction.new(10_137_444, date: Time.new(2014, 12, 9))
			xactions << Transaction.new(10_147_891, date: Time.new(2015, 1, 7))
			xactions << Transaction.new(10_158_638, date: Time.new(2015, 2, 9))
			xactions << Transaction.new(10_169_341, date: Time.new(2015, 3, 9))
			xactions << Transaction.new(10_180_406, date: Time.new(2015, 4, 7))
			xactions << Transaction.new(10_191_572, date: Time.new(2015, 5, 7))
			xactions << Transaction.new(10_202_851, date: Time.new(2015, 6, 8))
			xactions << Transaction.new(10_214_228, date: Time.new(2015, 7, 7))
			xactions << Transaction.new(10_225_830, date: Time.new(2015, 8, 7))	
			xactions << Transaction.new(10_237_550, date: Time.new(2015, 9, 7))	
			xactions << Transaction.new(10_249_432, date: Time.new(2015, 10, 7))
			expect(xactions.xirr(100, 0.1372).effective.round(6)).to eq D("0.141087")
		end


	end

	describe '#irr' do
		it "should accept initial rate parameter" do
			@xactions = [-4000,1200,1410,1875,1050]
			@xactions.should_receive(:nlsolve).with(anything(),[0.5])
			@xactions.irr(0.5)
		end
	end
end