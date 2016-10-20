require_relative("lib/caffeine_consumer.rb")
require_relative("lib/payable.rb")
require_relative("lib/programmer.rb")
require_relative("lib/designer.rb")

niz = Programmer.new
niz.program

xio = Designer.new
xio.design_things