def roll(expr = '1d6')
  rolls, sides = expr.match(/^(\d+)d(\d+)/)[1..2]
  rolls = rolls.to_i
  sides = sides.to_i
  total = 0
  rolls.times do
    total += Random.new.rand(sides)+1
  end
  return total
end

def d6
  return roll('1d6')
end

def d66
  return "#{d6.to_s}#{d6.to_s}".to_i
end
