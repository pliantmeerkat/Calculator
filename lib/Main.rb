# this is the file for the main program, which handles the gui running and user input

require 'fox16'
include Fox 

app = FXApp.new
main = FXMainWindow.new(app, "U Wot M8", :width => 300, :height => 400)
app.create 
main.show(PLACEMENT_SCREEN)
app.run