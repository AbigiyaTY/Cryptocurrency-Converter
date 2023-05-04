require './manager'

def sunmenu(manager, to)
  coin_list = manager.coin_list
  puts 'Available Coins'
  puts coin_list.join(', ').center(50, '-')
  print 'Coin: '
  symbol = gets.chomp.upcase
  print 'Amount: '
  amount = gets.chomp.to_i

  if coin_list.include? symbol
    result = manager.calculate(amount, symbol, to)
    puts '-'.center(50, '-')
    puts "#{amount} #{symbol} = #{result} #{to}".center(50, '-')
    puts '-'.center(50, '-')
  else
    puts "#{symbol} is not aavailable.".center(50, '*')
  end
end

def menu
  manager = Manager.new
  loop do
    puts 'Cryptocurrency converter'.center(50, '#')
    puts 'a) Convert to USD'
    puts 'b) Convert to EUR'
    puts 'q) Quit'
    print 'Action: '
    choice = gets.chomp.downcase

    case choice
    when 'a' then sunmenu(manager, 'USD')
    when 'b' then sunmenu(manager, 'EUR')
    end
    break unless choice != 'q'
  end
end

menu
