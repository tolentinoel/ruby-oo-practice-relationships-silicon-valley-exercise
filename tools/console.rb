require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


company1 = Startup.new("new startup", "Mr.Wiggles", "WeNew.newbs")

moneyman1 = VentureCapitalist.new("DJ Khaled", 2000000000.0)
moneyman2 = VentureCapitalist.new("Richie Rich", 5000000.0)
moneyman3 = VentureCapitalist.new("Ellaine T.", 7000000000.0)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line