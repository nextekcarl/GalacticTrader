class TradeCode
  #Ex: Rich, Garden, High Population
  #Determines what TradeLots they have.
  attr_accessor :code, :morally_ambiguous
  def initialize(code, morally_ambiguous)
    #case statement to determine what Basic Trade Good to load???
    @code = code
    @morally_ambiguous = morally_ambiguous
  end

  def basic_goods_available
    goods = []
    #return what basic goods can be found at this trade code (as array of
    #Basic Trade Goods)
    case
    when @code == 'In' || @code == 'Industrial'
      goods << [
        BasicTradeGood.new("Advanced Electronics", @morally_ambiguous),
        BasicTradeGood.new("Advanced Machine Parts", @morally_ambiguous),
        BasicTradeGood.new("Advanced Manufactured Goods", @morally_ambiguous),
        BasicTradeGood.new("Advanced Weapons", @morally_ambiguous),
        BasicTradeGood.new("Advanced Vehicles", @morally_ambiguous),
        BasicTradeGood.new("Polymers", @morally_ambiguous),
        BasicTradeGood.new("Robots", @morally_ambiguous),
        BasicTradeGood.new("Vehicles", @morally_ambiguous),
        BasicTradeGood.new("Weapons, Illegal", @morally_ambiguous),
      ]
    when @code == 'Ht' || @code == 'High_tech'
      goods << [
        BasicTradeGood.new("Advanced Electronics", @morally_ambiguous),
        BasicTradeGood.new("Advanced Machine Parts", @morally_ambiguous),
        BasicTradeGood.new("Advanced Manufactured Goods", @morally_ambiguous),
        BasicTradeGood.new("Advanced Weapons", @morally_ambiguous),
        BasicTradeGood.new("Advanced Vehicles", @morally_ambiguous),
        BasicTradeGood.new("Cybernetics", @morally_ambiguous),
        BasicTradeGood.new("Cybernetics, Illegal", @morally_ambiguous),
        BasicTradeGood.new("Weapons, Illegal", @morally_ambiguous),
      ]
    when @code == 'Hi' || @code == 'High_pop'
      goods << [
        BasicTradeGood.new("Luxury Goods", @morally_ambiguous),
        BasicTradeGood.new("Medical Supplies", @morally_ambiguous),
        BasicTradeGood.new("Pharmaceuticals", @morally_ambiguous),
        BasicTradeGood.new("Drugs, Illegal", @morally_ambiguous),
      ]
    when @code == 'Ag' || @code == 'Agricultural'
      goods << [
        BasicTradeGood.new("Biochemicals", @morally_ambiguous),
        BasicTradeGood.new("Live Animals", @morally_ambiguous),
        BasicTradeGood.new("Luxury Consumables", @morally_ambiguous),
        BasicTradeGood.new("Textiles", @morally_ambiguous),
        BasicTradeGood.new("Uncommon Raw Materials", @morally_ambiguous),
        BasicTradeGood.new("Wood", @morally_ambiguous),
        BasicTradeGood.new("Biochemicals, Illegal", @morally_ambiguous),
        BasicTradeGood.new("Luxuries, Illegal", @morally_ambiguous),
      ]
    when @code == 'Wa' || @code == 'Water_world'
      goods << [
        BasicTradeGood.new("Biochemicals", @morally_ambiguous),
        BasicTradeGood.new("Luxury Consumables", @morally_ambiguous),
        BasicTradeGood.new("Petrochemicals", @morally_ambiguous),
        BasicTradeGood.new("Pharmaceuticals", @morally_ambiguous),
        BasicTradeGood.new("Spices", @morally_ambiguous),
        BasicTradeGood.new("Uncommon Raw Materials", @morally_ambiguous),
        BasicTradeGood.new("Biochemicals, Illegal", @morally_ambiguous),
        BasicTradeGood.new("Drugs, Illegal", @morally_ambiguous),
        BasicTradeGood.new("Luxuries, Illegal", @morally_ambiguous),
      ]
    when @code == 'A' || @code == 'Asteroid' || @code == 'As'
      goods << [
        BasicTradeGood.new("Crystals & Gems", @morally_ambiguous),
        BasicTradeGood.new("Pharmaceuticals", @morally_ambiguous),
        BasicTradeGood.new("Precious Metals", @morally_ambiguous),
        BasicTradeGood.new("Radioactives", @morally_ambiguous),
        BasicTradeGood.new("Uncommon Ore", @morally_ambiguous),
        BasicTradeGood.new("Drugs, Illegal", @morally_ambiguous),
      ]
    when @code == 'De' || @code == 'Desert'
      goods << [
        BasicTradeGood.new("Crystals & Gems", @morally_ambiguous),
        BasicTradeGood.new("Petrochemicals", @morally_ambiguous),
        BasicTradeGood.new("Pharmaceuticals", @morally_ambiguous),
        BasicTradeGood.new("Precious Metals", @morally_ambiguous),
        BasicTradeGood.new("Radioactives", @morally_ambiguous),
        BasicTradeGood.new("Spices", @morally_ambiguous),
        BasicTradeGood.new("Uncommon Raw Materials", @morally_ambiguous),
        BasicTradeGood.new("Drugs, Illegal", @morally_ambiguous),
      ]
    when @code == 'Ic' || @code == 'Ice_capped'
      goods << [
        BasicTradeGood.new("Crystals & Gems", @morally_ambiguous),
        BasicTradeGood.new("Petrochemicals", @morally_ambiguous),
        BasicTradeGood.new("Precious Metals", @morally_ambiguous),
        BasicTradeGood.new("Uncommon Ore", @morally_ambiguous),
      ]
    when @code == 'Ga' || @code == 'Garden'
      goods << [
        BasicTradeGood.new("Live Animals", @morally_ambiguous),
        BasicTradeGood.new("Luxury Consumables", @morally_ambiguous),
        BasicTradeGood.new("Spices", @morally_ambiguous),
        BasicTradeGood.new("Wood", @morally_ambiguous),
        BasicTradeGood.new("Luxuries, Illegal", @morally_ambiguous),
      ]
    when @code == 'Fl' || @code == 'Fluid_oceans'
      goods << [
        BasicTradeGood.new("Petrochemicals", @morally_ambiguous),
        BasicTradeGood.new("Precious Metals", @morally_ambiguous),
      ]
    when @code == 'Lo' || @code == 'Low_pop'
      goods << [
        BasicTradeGood.new("Radioactives", @morally_ambiguous),
      ]
    when @code == 'Ni' || @code == 'Non_industrial'
      goods << [
        BasicTradeGood.new("Textiles", @morally_ambiguous),
      ]
    else
      #Not a useful code for trading, no extra items available
    end
    return goods.flatten
  end

  def self.all_trade_relavent_codes
    return {
      in: 'Industrial',
      ht: 'High Tech',
      hi: 'High Population',
      ag: 'Agricultural',
      wa: 'Water World',
      a:  'Asteroid',
      de: 'Desert',
      ic: 'Ice Capped',
      ga: 'Garden',
      fl: 'Fluid Oceans',
      lo: 'Low Population',
      ni: 'Non-industrial'
    }
  end
end
