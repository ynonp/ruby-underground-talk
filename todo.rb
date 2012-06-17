require 'Qt'
require './todo_ui'

##############################
# MainWindow derived class is
# our starting point to manage the app
#

class MainWindow < Qt::MainWindow
  def initialize( parent = nil )
    # Note every displayable "thing" in Qt is
    # called a QWidget, and every widget can have a parent
    # If the parent is nil => widget is a window
    # else widget is embedded in another widget
    super ( parent )

    @ui = Ui::MainWindow.new
    @ui.setup_ui ( self )
  end
end

##############################

app = Qt::Application.new( ARGV )
mw = MainWindow.new

mw.show
mw.raise

app.exec

