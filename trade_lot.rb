class TradeLot
  #This is what a supplier has on hand to sell. Made up of BasicTradeGoods
  #We only really need the text descriptions at this point. So returning:
  #Basic Electronics, 40 tons
  #  - Video Game and Entertainment Systems, 30 tons, 8,000Cr
  #  - Personal and Commercial Computers, 10 tons, 10,000Cr
  #Basic Raw Materials, 30 tons
  #  - Fabricated Plastics, 10 tons, 7,000Cr
  #  - Workable Metals, 20 tons, 3,000Cr
  #Would be fine.
  attr_accessor :basic_goods, :morally_ambiguous
  def initialize(trade_codes, morally_ambiguous = false)
    #Iterate over trade codes, finding goods by default,
    #remove duplicates,
    #then add 1d6 additional items unique to supplier,
    #then return results nicely formatted
    @morally_ambiguous =  morally_ambiguous
    #start with the basic goods available everywhere
    @basic_goods = [
      BasicTradeGood.new("Basic Electronics", @morally_ambiguous),
      BasicTradeGood.new("Basic Machine Parts", @morally_ambiguous),
      BasicTradeGood.new("Basic Manufactured Goods", @morally_ambiguous),
      BasicTradeGood.new("Basic Raw Materials", @morally_ambiguous),
      BasicTradeGood.new("Basic Consumables", @morally_ambiguous),
      BasicTradeGood.new("Basic Ore", @morally_ambiguous),
    ]
    trade_codes.each do |trade_code|
      @basic_goods << trade_code.basic_goods_available
    end

    @basic_goods = @basic_goods.flatten.uniq { |btg| btg.basic_trade_good }
    roll('1d6').times do
      #roll random additional lots and append them to @basic_goods
      result = d66
      case
      when result == 11
        @basic_goods << BasicTradeGood.new("Basic Electronics", @morally_ambiguous)
      when result == 12
        @basic_goods << BasicTradeGood.new("Basic Machine Parts", @morally_ambiguous)
      when result == 13
        @basic_goods << BasicTradeGood.new("Basic Manufactured Goods", @morally_ambiguous)
      when result == 14
        @basic_goods << BasicTradeGood.new("Basic Raw Materials", @morally_ambiguous)
      when result == 15
        @basic_goods << BasicTradeGood.new("Basic Consumables", @morally_ambiguous)
      when result == 16
        @basic_goods << BasicTradeGood.new("Basic Ore", @morally_ambiguous)
      when result == 21
        @basic_goods << BasicTradeGood.new("Advanced Electronics", @morally_ambiguous)
      when result == 22
        @basic_goods << BasicTradeGood.new("Advanced Machine Parts", @morally_ambiguous)
      when result == 23
        @basic_goods << BasicTradeGood.new("Advanced Manufactured Goods", @morally_ambiguous)
      when result == 24
        @basic_goods << BasicTradeGood.new("Advanced Weapons", @morally_ambiguous)
      when result == 25
        @basic_goods << BasicTradeGood.new("Advanced Vehicles", @morally_ambiguous)
      when result == 26
        @basic_goods << BasicTradeGood.new("Biochemicals", @morally_ambiguous)
      when result == 31
        @basic_goods << BasicTradeGood.new("Crystals & Gems", @morally_ambiguous)
      when result == 32
        @basic_goods << BasicTradeGood.new("Cybernetics", @morally_ambiguous)
      when result == 33
        @basic_goods << BasicTradeGood.new("Live Animals", @morally_ambiguous)
      when result == 34
        @basic_goods << BasicTradeGood.new("Luxury Consumables", @morally_ambiguous)
      when result == 35
        @basic_goods << BasicTradeGood.new("Luxury Goods", @morally_ambiguous)
      when result == 36
        @basic_goods << BasicTradeGood.new("Medical Supplies", @morally_ambiguous)
      when result == 41
        @basic_goods << BasicTradeGood.new("Petrochemicals", @morally_ambiguous)
      when result == 42
        @basic_goods << BasicTradeGood.new("Pharmaceuticals", @morally_ambiguous)
      when result == 43
        @basic_goods << BasicTradeGood.new("Polymers", @morally_ambiguous)
      when result == 44
        @basic_goods << BasicTradeGood.new("Precious Metals", @morally_ambiguous)
      when result == 45
        @basic_goods << BasicTradeGood.new("Radioactives", @morally_ambiguous)
      when result == 46
        @basic_goods << BasicTradeGood.new("Robots", @morally_ambiguous)
      when result == 51
        @basic_goods << BasicTradeGood.new("Spices", @morally_ambiguous)
      when result == 52
        @basic_goods << BasicTradeGood.new("Textiles", @morally_ambiguous)
      when result == 53
        @basic_goods << BasicTradeGood.new("Uncommon Ore", @morally_ambiguous)
      when result == 54
        @basic_goods << BasicTradeGood.new("Uncommon Raw Materials", @morally_ambiguous)
      when result == 55
        @basic_goods << BasicTradeGood.new("Wood", @morally_ambiguous)
      when result == 56
        @basic_goods << BasicTradeGood.new("Vehicles", @morally_ambiguous)
      when result == 61 && @morally_ambiguous
        @basic_goods << BasicTradeGood.new("Biochemicals, Illegal", @morally_ambiguous)
      when result == 62 && @morally_ambiguous
        @basic_goods << BasicTradeGood.new("Cybernetics, Illegal", @morally_ambiguous)
      when result == 63 && @morally_ambiguous
        @basic_goods << BasicTradeGood.new("Drugs, Illegal", @morally_ambiguous)
      when result == 64 && @morally_ambiguous
        @basic_goods << BasicTradeGood.new("Luxuries, Illegal", @morally_ambiguous)
      when result == 65 && @morally_ambiguous
        @basic_goods << BasicTradeGood.new("Weapons, Illegal", @morally_ambiguous)
      when result == 66
        @basic_goods << BasicTradeGood.new("Exotics", @morally_ambiguous)
      end
    end

    @basic_goods = @basic_goods.flatten.sort{|a, b| a.basic_trade_good <=> b.basic_trade_good}
  end

  def basic_trade_goods
    @basic_goods
  end
end
