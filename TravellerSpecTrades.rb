require './dice.rb'
require './supplier.rb'
require './trade_code.rb'
require './trade_lot.rb'
require './basic_trade_good.rb'
require './defined_trade_good.rb'

puts "Start by creating a suppplier (bob = Supplier.new(true, 'Hi Ht In Na A')),
and then asking bob what his available trade lots are (bob.get_trade_lots)
to get a nice output of what he can sell today. He will return the same
goods every time, until you specifically call bob.get_trade_lots(true)
to force a recalculation of his available trade lots."

#TODO: When getting a supplier's basic trade goods, I need to remove duplicates,
#but ONLY for the automatic basic goods. If duplicates come up in the random roll
#then they increase the max tonnage rather than get tossed away. So duplicates
#can probably be left in place after that.

#TODO: Add HTML option to output a nice table.
#TODO: Implement data structure to contain the trade goods generated to
#make outputting various formats easier.
