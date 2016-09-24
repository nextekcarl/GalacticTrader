class BasicTradeGood
  #Define the basic goods, link to table with defined goods on it.
  #Has a max tonnage, and then a table of DefinedTradeGoods that can make it up.
  #case statement to determine what DefinedTradeGoods to roll up???
  attr_accessor :basic_trade_good, :max_tonnage, :total_tonnage, :specifics
  def initialize(basic_trade_good)
    @basic_trade_good = basic_trade_good
    case @basic_trade_good
      when "Basic Electronics"
        @max_tonnage = roll('1d6') * 10
      when "Basic Machine Parts"
        @max_tonnage = roll('1d6') * 10
      when "Basic Manufactured Goods"
        @max_tonnage = roll('1d6') * 10
      when "Basic Raw Materials"
        @max_tonnage = roll('1d6') * 10
      when "Basic Consumables"
        @max_tonnage = roll('1d6') * 10
      when "Basic Ore"
        @max_tonnage = roll('1d6') * 10
      when "Advanced Electronics"
        @max_tonnage = roll('1d6') * 5
      when "Advanced Machine Parts"
        @max_tonnage = roll('1d6') * 5
      when "Advanced Manufactured Goods"
        @max_tonnage = roll('1d6') * 5
      when "Advanced Weapons"
        @max_tonnage = roll('1d6') * 5
      when "Advanced Vehicles"
        @max_tonnage = roll('1d6') * 5
      when "Biochemicals"
        @max_tonnage = roll('1d6') * 5
      when "Crystals & Gems"
        @max_tonnage = roll('1d6') * 5
      when "Cybernetics"
        @max_tonnage = roll('1d6')
      when "Live Animals"
        @max_tonnage = roll('1d6') * 10
      when "Luxury Consumables"
        @max_tonnage = roll('1d6') * 10
      when "Luxury Goods"
        @max_tonnage = roll('1d6')
      when "Medical Supplies"
        @max_tonnage = roll('1d6') * 5
      when "Petrochemicals"
        @max_tonnage = roll('1d6') * 10
      when "Pharmaceuticals"
        @max_tonnage = roll('1d6')
      when "Polymers"
        @max_tonnage = roll('1d6') * 10
      when "Precious Metals"
        @max_tonnage = roll('1d6')
      when "Radioactives"
        @max_tonnage = roll('1d6')
      when "Robots"
        @max_tonnage = roll('1d6') * 5
      when "Spices"
        @max_tonnage = roll('1d6') * 5
      when "Textiles"
        @max_tonnage = roll('1d6') * 10
      when "Uncommon Ore"
        @max_tonnage = roll('1d6') * 10
      when "Uncommon Raw Materials"
        @max_tonnage = roll('1d6') * 10
      when "Wood"
        @max_tonnage = roll('1d6') * 10
      when "Vehicles"
        @max_tonnage = roll('1d6') * 10
      when "Biochemicals, Illegal"
        @max_tonnage = roll('1d6') * 5
      when "Cybernetics, Illegal"
        @max_tonnage = roll('1d6')
      when "Drugs, Illegal"
        @max_tonnage = roll('1d6')
      when "Luxuries, Illegal"
        @max_tonnage = roll('1d6')
      when "Weapons, Illegal"
        @max_tonnage = roll('1d6') * 5
      when "Exotics"
        #Hmm, max works differently for these...
        #Can't really handle these, so just set max to 0, have to use book
        @max_tonnage = 0
      else
        raise "Invalid Basic Trade Good: #{basic_trade_good}"
    end
    @remaining_tonnage = @max_tonnage
  end

  def details
    @specifics ||= "#{@basic_trade_good}: #{@max_tonnage} tons\n"
    while @remaining_tonnage > 0
      goods, tonnage = DefinedTradeGood.specific(@basic_trade_good, @remaining_tonnage)
      @specifics += "\t#{goods}"
      @remaining_tonnage -= tonnage
    end
    return @specifics
  end
end
