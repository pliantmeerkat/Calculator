# this is the file for the main program, which handles the gui running and user input

require 'fox16'
include Fox 

class GUI < FXMainWindow # child of FXMainwindow

    def initialize(app) # runs the application on opbject creation
        main = FXMainWindow.new(app, "Calculator", :width => 300, :height => 400)
    end

    def create
        super
        show(PLACEMENT_SCREEN)
    end
end

app = FXApp.new
GUI.new(app)
app.create
app.run
