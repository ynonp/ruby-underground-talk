=begin
** Form generated from reading ui file 'todo.ui'
**
** Created: Sun Jun 17 17:44:00 2012
**      by: Qt User Interface Compiler version 4.8.0
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_MainWindow
    attr_reader :actionSave
    attr_reader :actionSave_As
    attr_reader :actionOpen
    attr_reader :actionExit
    attr_reader :actionAbout
    attr_reader :centralwidget
    attr_reader :verticalLayout
    attr_reader :horizontalLayout
    attr_reader :task_name
    attr_reader :btn_add
    attr_reader :tasks_list
    attr_reader :btn_done
    attr_reader :menubar
    attr_reader :menuFile
    attr_reader :menuHelp
    attr_reader :statusbar

    def setupUi(mainWindow)
    if mainWindow.objectName.nil?
        mainWindow.objectName = "mainWindow"
    end
    mainWindow.resize(495, 500)
    @actionSave = Qt::Action.new(mainWindow)
    @actionSave.objectName = "actionSave"
    @actionSave_As = Qt::Action.new(mainWindow)
    @actionSave_As.objectName = "actionSave_As"
    @actionOpen = Qt::Action.new(mainWindow)
    @actionOpen.objectName = "actionOpen"
    @actionExit = Qt::Action.new(mainWindow)
    @actionExit.objectName = "actionExit"
    @actionAbout = Qt::Action.new(mainWindow)
    @actionAbout.objectName = "actionAbout"
    @centralwidget = Qt::Widget.new(mainWindow)
    @centralwidget.objectName = "centralwidget"
    @verticalLayout = Qt::VBoxLayout.new(@centralwidget)
    @verticalLayout.objectName = "verticalLayout"
    @horizontalLayout = Qt::HBoxLayout.new()
    @horizontalLayout.objectName = "horizontalLayout"
    @task_name = Qt::LineEdit.new(@centralwidget)
    @task_name.objectName = "task_name"

    @horizontalLayout.addWidget(@task_name)

    @btn_add = Qt::PushButton.new(@centralwidget)
    @btn_add.objectName = "btn_add"

    @horizontalLayout.addWidget(@btn_add)


    @verticalLayout.addLayout(@horizontalLayout)

    @tasks_list = Qt::ListWidget.new(@centralwidget)
    @tasks_list.objectName = "tasks_list"

    @verticalLayout.addWidget(@tasks_list)

    @btn_done = Qt::PushButton.new(@centralwidget)
    @btn_done.objectName = "btn_done"

    @verticalLayout.addWidget(@btn_done)

    mainWindow.centralWidget = @centralwidget
    @menubar = Qt::MenuBar.new(mainWindow)
    @menubar.objectName = "menubar"
    @menubar.geometry = Qt::Rect.new(0, 0, 495, 22)
    @menuFile = Qt::Menu.new(@menubar)
    @menuFile.objectName = "menuFile"
    @menuHelp = Qt::Menu.new(@menubar)
    @menuHelp.objectName = "menuHelp"
    mainWindow.setMenuBar(@menubar)
    @statusbar = Qt::StatusBar.new(mainWindow)
    @statusbar.objectName = "statusbar"
    mainWindow.statusBar = @statusbar

    @menubar.addAction(@menuFile.menuAction())
    @menubar.addAction(@menuHelp.menuAction())
    @menuFile.addAction(@actionSave)
    @menuFile.addAction(@actionSave_As)
    @menuFile.addAction(@actionOpen)
    @menuFile.addSeparator()
    @menuFile.addAction(@actionExit)
    @menuHelp.addAction(@actionAbout)

    retranslateUi(mainWindow)

    Qt::MetaObject.connectSlotsByName(mainWindow)
    end # setupUi

    def setup_ui(mainWindow)
        setupUi(mainWindow)
    end

    def retranslateUi(mainWindow)
    mainWindow.windowTitle = Qt::Application.translate("MainWindow", "MainWindow", nil, Qt::Application::UnicodeUTF8)
    @actionSave.text = Qt::Application.translate("MainWindow", "Save", nil, Qt::Application::UnicodeUTF8)
    @actionSave_As.text = Qt::Application.translate("MainWindow", "Save As ...", nil, Qt::Application::UnicodeUTF8)
    @actionOpen.text = Qt::Application.translate("MainWindow", "Open", nil, Qt::Application::UnicodeUTF8)
    @actionExit.text = Qt::Application.translate("MainWindow", "Exit", nil, Qt::Application::UnicodeUTF8)
    @actionAbout.text = Qt::Application.translate("MainWindow", "About", nil, Qt::Application::UnicodeUTF8)
    @btn_add.text = Qt::Application.translate("MainWindow", "Add", nil, Qt::Application::UnicodeUTF8)
    @btn_done.text = Qt::Application.translate("MainWindow", "Done !", nil, Qt::Application::UnicodeUTF8)
    @menuFile.title = Qt::Application.translate("MainWindow", "File", nil, Qt::Application::UnicodeUTF8)
    @menuHelp.title = Qt::Application.translate("MainWindow", "Help", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(mainWindow)
        retranslateUi(mainWindow)
    end

end

module Ui
    class MainWindow < Ui_MainWindow
    end
end  # module Ui

