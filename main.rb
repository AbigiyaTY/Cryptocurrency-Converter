def menu
 loop do 
  puts "Cryptocurrency converter".center(50, '#')
  puts "a) Convert to USD"
  puts "b) Convert to EUR"
  puts "q) Quit"
  print "Action: "
  choice = gets.chomp
  
  break unless choice != 'q'
 end
end

menu()