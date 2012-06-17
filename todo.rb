require 'Qt'
require './todo_ui'

##############################
class MainWindow < Qt::MainWindow
  def initialize( parent = nil )
    super ( parent )

    @ui = Ui::MainWindow.new
    @ui.setup_ui ( self )
  end
end

app = Qt::Application.new( ARGV )
mw = MainWindow.new

mw.show
mw.raise

app.exec

