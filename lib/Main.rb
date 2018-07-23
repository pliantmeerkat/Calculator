# this is the file for the main program, which handles the gui running and user input
require 'fox16'
require 'Calc'
include Fox
# gui class

class GUI < FXMainWindow
  def initialize(fxapp, calculator)
    super(fxapp, "calculator", :width => 230, :height => 350)
  end

  def main_screen

  end

  def num_button

  end

  def oper_button

  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end

  def run

  end

end

def main
  app = FXApp.new
  GUI.new(app, Calc)
  app.create
  app.run
end

main