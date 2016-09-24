class Supplier
  #They have Trade Codes, which determines what TradeLots they have to sell
  #Morally Ambiguous is a boolean, determines if they sell illegal goods
  attr_accessor :morally_ambiguous, :trade_codes, :trade_lots, :available_goods
  def initialize(morally_ambiguous = false, trade_codes = [])
    @morally_ambiguous = morally_ambiguous
    @trade_codes = convert_string_to_trade_codes(trade_codes)
    @available_goods = ''
  end

  def get_trade_lots(recalc = false)
    #Figures out what Trade Lots the supplier has available based upon
    #what their trade Codes are and their Moral stance. If already done, just
    #returns that memoized value unless recalc is set to true
    @trade_lots = nil if recalc
    @trade_lots ||= TradeLot.new(@trade_codes, morally_ambiguous)
    @trade_lots.basic_trade_goods.each do |basic_trade_good|
      @available_goods += basic_trade_good.details
    end
    puts @available_goods
  end

  private

    def convert_string_to_trade_codes(raw_string)
      codes = []
      raw_string.split(' ').each do |code|
        codes << TradeCode.new(code)
      end
      return codes
    end
end
