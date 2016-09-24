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
    @basic_goods = []
    trade_codes.each do |trade_code|
      @basic_goods << trade_code.basic_goods_available
    end

    @basic_goods = @basic_goods.flatten.uniq { |btg| btg.basic_trade_good }
    roll('1d6').times do
      #roll random additional lots and append them to @basic_goods
      case d66
      when 11
        @basic_goods << BasicTradeGood.new("Basic Electronics")
      when 12
        @basic_goods << BasicTradeGood.new("Basic Machine Parts")
      when 13
        @basic_goods << BasicTradeGood.new("Basic Manufactured Goods")
      when 14
        @basic_goods << BasicTradeGood.new("Basic Raw Materials")
      when 15
        @basic_goods << BasicTradeGood.new("Basic Consumables")
      when 16
        @basic_goods << BasicTradeGood.new("Basic Ore")
      when 21
        @basic_goods << BasicTradeGood.new("Advanced Electronics")
      when 22
        @basic_goods << BasicTradeGood.new("Advanced Machine Parts")
      when 23
        @basic_goods << BasicTradeGood.new("Advanced Manufactured Goods")
      when 24
        @basic_goods << BasicTradeGood.new("Advanced Weapons")
      when 25
        @basic_goods << BasicTradeGood.new("Advanced Vehicles")
      when 26
        @basic_goods << BasicTradeGood.new("Biochemicals")
      when 31
        @basic_goods << BasicTradeGood.new("Crystals & Gems")
      when 32
        @basic_goods << BasicTradeGood.new("Cybernetics")
      when 33
        @basic_goods << BasicTradeGood.new("Live Animals")
      when 34
        @basic_goods << BasicTradeGood.new("Luxury Consumables")
      when 35
        @basic_goods << BasicTradeGood.new("Luxury Goods")
      when 36
        @basic_goods << BasicTradeGood.new("Medical Supplies")
      when 41
        @basic_goods << BasicTradeGood.new("Petrochemicals")
      when 42
        @basic_goods << BasicTradeGood.new("Pharmaceuticals")
      when 43
        @basic_goods << BasicTradeGood.new("Polymers")
      when 44
        @basic_goods << BasicTradeGood.new("Precious Metals")
      when 45
        @basic_goods << BasicTradeGood.new("Radioactives")
      when 46
        @basic_goods << BasicTradeGood.new("Robots")
      when 51
        @basic_goods << BasicTradeGood.new("Spices")
      when 52
        @basic_goods << BasicTradeGood.new("Textiles")
      when 53
        @basic_goods << BasicTradeGood.new("Uncommon Ore")
      when 54
        @basic_goods << BasicTradeGood.new("Uncommon Raw Materials")
      when 55
        @basic_goods << BasicTradeGood.new("Wood")
      when 56
        @basic_goods << BasicTradeGood.new("Vehicles")
      when 61 && @morally_ambiguous
        @basic_goods << BasicTradeGood.new("Biochemicals, Illegal")
      when 62 && @morally_ambiguous
        @basic_goods << BasicTradeGood.new("Cybernetics, Illegal")
      when 63 && @morally_ambiguous
        @basic_goods << BasicTradeGood.new("Drugs, Illegal")
      when 64 && @morally_ambiguous
        @basic_goods << BasicTradeGood.new("Luxuries, Illegal")
      when 65 && @morally_ambiguous
        @basic_goods << BasicTradeGood.new("Weapons, Illegal")
      when 66 && @morally_ambiguous
        @basic_goods << BasicTradeGood.new("Exotics")
      end
    end
    @basic_goods.flatten!
  end

  def basic_trade_goods
    @basic_goods
  end
end
