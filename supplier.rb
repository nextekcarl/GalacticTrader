class Supplier
  #They have Trade Codes, which determines what TradeLots they have to sell
  #Morally Ambiguous is a boolean, determines if they sell illegal goods
  attr_accessor :morally_ambiguous, :trade_codes, :trade_lots, :available_goods
  def initialize(morally_ambiguous = false, trade_codes = '')
    @morally_ambiguous = morally_ambiguous
    @trade_codes = convert_string_to_trade_codes(trade_codes)
    @available_goods = ''
  end

  def get_trade_lots(recalc = false)
    #Figures out what Trade Lots the supplier has available based upon
    #what their trade Codes are and their Moral stance. If already done, just
    #returns that memoized value unless recalc is set to true
    @trade_lots = nil if recalc
    @available_goods = ''
    @trade_lots ||= TradeLot.new(@trade_codes, @morally_ambiguous)
    @trade_lots.basic_trade_goods.each do |basic_trade_good|
      @available_goods += basic_trade_good.details
    end
    @available_goods
  end

  def to_s(recalc = false)
    puts get_trade_lots(recalc)
  end

  def to_html_table(recalc = false)
    table_output = '<table class="table table-bordered table-condensed table-striped table-hover"><tr class="table-header"><th>Basic Trade Good</th><th>Defined Trade Good</th><th>Size</th><th>Price</th></tr>'
    lines = get_trade_lots(recalc).split("\n")
    lines.each do |line|
      if line.include?(':')
        table_output += "<tr class='trade-goods-row'>"
        line.split(':').each {|part| table_output += "<td>#{part.strip}</td><td></td>"}
        table_output += "</tr>"
      elsif line.include?('|')
        table_output += "<tr class='defined-goods-row'><td></td>"
        line.split('|').each {|part| table_output += "<td>#{part.strip}</td>"}
        table_output += "</tr>"
      end
    end
    table_output += '</table>'
  end

  private

    def convert_string_to_trade_codes(raw_string)
      codes = []
      raw_string.split(' ').each do |code|
        codes << TradeCode.new(code, @morally_ambiguous)
      end
      return codes
    end
end
