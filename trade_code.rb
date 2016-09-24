class TradeCode
  #Ex: Rich, Garden, High Population
  #Determines what TradeLots they have.
  attr_accessor :code
  def initialize(code)
    #case statement to determine what Basic Trade Good to load???
    @code = code
  end

  def basic_goods_available
    #return what basic goods can be found at this trade code (as array of
    #Basic Trade Goods)
    #start with the basic goods available everywhere
    goods = [
      BasicTradeGood.new("Basic Electronics"),
      BasicTradeGood.new("Basic Machine Parts"),
      BasicTradeGood.new("Basic Manufactured Goods"),
      BasicTradeGood.new("Basic Raw Materials"),
      BasicTradeGood.new("Basic Consumables"),
      BasicTradeGood.new("Basic Ore"),
    ]
    case @code
    when 'In'
      goods << [
        BasicTradeGood.new("Advanced Electronics"),
        BasicTradeGood.new("Advanced Machine Parts"),
        BasicTradeGood.new("Advanced Manufactured Goods"),
        BasicTradeGood.new("Advanced Weapons"),
        BasicTradeGood.new("Advanced Vehicles"),
        BasicTradeGood.new("Polymers"),
        BasicTradeGood.new("Robots"),
        BasicTradeGood.new("Vehicles"),
        BasicTradeGood.new("Weapons, Illegal"),
      ]
    when 'Ht'
      goods << [
        BasicTradeGood.new("Advanced Electronics"),
        BasicTradeGood.new("Advanced Machine Parts"),
        BasicTradeGood.new("Advanced Manufactured Goods"),
        BasicTradeGood.new("Advanced Weapons"),
        BasicTradeGood.new("Advanced Vehicles"),
        BasicTradeGood.new("Cybernetics"),
        BasicTradeGood.new("Cybernetics, Illegal"),
        BasicTradeGood.new("Weapons, Illegal"),
      ]
    when 'Hi'
      goods << [
        BasicTradeGood.new("Luxury Goods"),
        BasicTradeGood.new("Medical Supplies"),
        BasicTradeGood.new("Pharmaceuticals"),
        BasicTradeGood.new("Drugs, Illegal"),
      ]
    when 'Ag'
      goods << [
        BasicTradeGood.new("Biochemicals"),
        BasicTradeGood.new("Live Animals"),
        BasicTradeGood.new("Luxury Consumables"),
        BasicTradeGood.new("Textiles"),
        BasicTradeGood.new("Uncommon Raw Materials"),
        BasicTradeGood.new("Wood"),
        BasicTradeGood.new("Biochemicals, Illegal"),
        BasicTradeGood.new("Luxuries, Illegal"),
      ]
    when 'Wa'
      goods << [
        BasicTradeGood.new("Biochemicals"),
        BasicTradeGood.new("Luxury Consumables"),
        BasicTradeGood.new("Petrochemicals"),
        BasicTradeGood.new("Pharmaceuticals"),
        BasicTradeGood.new("Spices"),
        BasicTradeGood.new("Uncommon Raw Materials"),
        BasicTradeGood.new("Biochemicals, Illegal"),
        BasicTradeGood.new("Drugs, Illegal"),
        BasicTradeGood.new("Luxuries, Illegal"),
      ]
    when 'A'
      goods << [
        BasicTradeGood.new("Crystals & Gems"),
        BasicTradeGood.new("Pharmaceuticals"),
        BasicTradeGood.new("Precious Metals"),
        BasicTradeGood.new("Radioactives"),
        BasicTradeGood.new("Uncommon Ore"),
        BasicTradeGood.new("Drugs, Illegal"),
      ]
    when 'De'
      goods << [
        BasicTradeGood.new("Crystals & Gems"),
        BasicTradeGood.new("Petrochemicals"),
        BasicTradeGood.new("Pharmaceuticals"),
        BasicTradeGood.new("Precious Metals"),
        BasicTradeGood.new("Radioactives"),
        BasicTradeGood.new("Spices"),
        BasicTradeGood.new("Uncommon Raw Materials"),
        BasicTradeGood.new("Drugs, Illegal"),
      ]
    when 'Ic'
      goods << [
        BasicTradeGood.new("Crystals & Gems"),
        BasicTradeGood.new("Petrochemicals"),
        BasicTradeGood.new("Precious Metals"),
        BasicTradeGood.new("Uncommon Ore"),
      ]
    when 'Ga'
      goods << [
        BasicTradeGood.new("Live Animals"),
        BasicTradeGood.new("Luxury Consumables"),
        BasicTradeGood.new("Spices"),
        BasicTradeGood.new("Wood"),
        BasicTradeGood.new("Luxuries, Illegal"),
      ]
    when 'Fl'
      goods << [
        BasicTradeGood.new("Petrochemicals"),
        BasicTradeGood.new("Precious Metals"),
      ]
    when 'Lo'
      goods << [
        BasicTradeGood.new("Radioactives"),
      ]
    when 'Ni'
      goods << [
        BasicTradeGood.new("Textiles")
      ]
    else
      #Not a useful code for trading, no extra items available
    end
    return goods.flatten
  end
end
