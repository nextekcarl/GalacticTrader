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
    when @code == 'Ht'
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
    when @code == 'Hi'
      goods << [
        BasicTradeGood.new("Luxury Goods", @morally_ambiguous),
        BasicTradeGood.new("Medical Supplies", @morally_ambiguous),
        BasicTradeGood.new("Pharmaceuticals", @morally_ambiguous),
        BasicTradeGood.new("Drugs, Illegal", @morally_ambiguous),
      ]
    when @code == 'Ag'
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
    when @code == 'Wa'
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
    when @code == 'A'
      goods << [
        BasicTradeGood.new("Crystals & Gems", @morally_ambiguous),
        BasicTradeGood.new("Pharmaceuticals", @morally_ambiguous),
        BasicTradeGood.new("Precious Metals", @morally_ambiguous),
        BasicTradeGood.new("Radioactives", @morally_ambiguous),
        BasicTradeGood.new("Uncommon Ore", @morally_ambiguous),
        BasicTradeGood.new("Drugs, Illegal", @morally_ambiguous),
      ]
    when @code == 'De'
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
    when @code == 'Ic'
      goods << [
        BasicTradeGood.new("Crystals & Gems", @morally_ambiguous),
        BasicTradeGood.new("Petrochemicals", @morally_ambiguous),
        BasicTradeGood.new("Precious Metals", @morally_ambiguous),
        BasicTradeGood.new("Uncommon Ore", @morally_ambiguous),
      ]
    when @code == 'Ga'
      goods << [
        BasicTradeGood.new("Live Animals", @morally_ambiguous),
        BasicTradeGood.new("Luxury Consumables", @morally_ambiguous),
        BasicTradeGood.new("Spices", @morally_ambiguous),
        BasicTradeGood.new("Wood", @morally_ambiguous),
        BasicTradeGood.new("Luxuries, Illegal", @morally_ambiguous),
      ]
    when @code == 'Fl'
      goods << [
        BasicTradeGood.new("Petrochemicals", @morally_ambiguous),
        BasicTradeGood.new("Precious Metals", @morally_ambiguous),
      ]
    when @code == 'Lo'
      goods << [
        BasicTradeGood.new("Radioactives", @morally_ambiguous),
      ]
    when @code == 'Ni'
      goods << [
        BasicTradeGood.new("Textiles", @morally_ambiguous),
      ]
    else
      #Not a useful code for trading, no extra items available
    end
    return goods.flatten
  end
end
