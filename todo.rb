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

    setup_actions
  end

  def setup_actions
    # Using connect, we connect a "signal" to a "slot"
    # signal is Qt's way to say something happened
    # and slot is just a method to call when that
    # something happens
    @ui.btn_add.connect( :clicked, self, :add_task )
    @ui.btn_done.connect( :clicked, self, :task_done )
  end

  def add_task
    @ui.tasks_list.add_item @ui.task_name.text
    @ui.task_name.text = ''
  end

  def task_done
    idx = @ui.tasks_list.current_row
    @ui.tasks_list.take_item idx
  end

end

##############################

app = Qt::Application.new( ARGV )
mw = MainWindow.new

mw.show
mw.raise

app.exec

