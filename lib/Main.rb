# this is the file for the main program, which handles the gui running and user input
require 'fox16'
include Fox 
# gui class
class GUI < FXMainWindow
  attr_reader :calc
  def initialize()
    @calc = Calc.new
  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end

  def add
          
  end
end

app = FXApp.new
main = FXMainWindow.new(app, "Calculator", :width => 300, :height => 400)
GUI.new
app.create
app.run
