/**
 * @file /src/main_window.cpp
 *
 * @brief Implementation for the qt gui.
 *
 * @date February 2011
 **/
/*****************************************************************************
** Includes
*****************************************************************************/

#include <QtGui>
#include <QMessageBox>
#include <iostream>
#include <QString>
#include "../include/gui/main_window.hpp"

/*****************************************************************************
** Namespaces
*****************************************************************************/

namespace gui {

using namespace Qt;

/*****************************************************************************
** Implementation [MainWindow]
*****************************************************************************/

MainWindow::MainWindow(int argc, char** argv, QWidget *parent)
	: QMainWindow(parent)
	, qnode(argc,argv)
{
  qRegisterMetaType<glosa::qt_GUI::ConstPtr>("glosa::qt_GUI::ConstPtr");
	ui.setupUi(this); // Calling this incidentally connects all ui's triggers to on_...() callbacks in this class.
    QObject::connect(ui.actionAbout_Qt, SIGNAL(triggered(bool)), qApp, SLOT(aboutQt())); // qApp is a global variable for the application

    ReadSettings();
	setWindowIcon(QIcon(":/images/icon.png"));
//	ui.tab_manager->setCurrentIndex(0); // ensure the first tab is showing - qt-designer should have this already hardwired, but often loses it (settings?).
//    QObject::connect(&qnode, SIGNAL(rosShutdown()), this, SLOT(close()));

	/*********************
	** Logging
	**********************/
//  ui.view_logging->setModel(qnode.loggingModel());
    QObject::connect(&qnode, SIGNAL(loggingUpdated(const glosa::qt_GUI::ConstPtr&)), this, SLOT(updateLoggingView(const glosa::qt_GUI::ConstPtr&)));
    /*********************
    ** Auto Start
    **********************/
    // if  ji zhu she zhi shi an xia de
    if ( ui.checkbox_remember_settings->isChecked() ) {
//        ROS_INFO("GETIN");
        on_button_connect_clicked(true);
    }
    this->setFixedSize(this->width(), this->height());
}

MainWindow::~MainWindow() {}

/*****************************************************************************
** Implementation [Slots]
*****************************************************************************/

void MainWindow::showNoMasterMessage() {
	QMessageBox msgBox;
	msgBox.setText("Couldn't find the ros master.");
	msgBox.exec();
    close();
}

/*
 * These triggers whenever the button is clicked, regardless of whether it
 * is already checked or not.
 */

void MainWindow::on_button_connect_clicked(bool check ) {
  ROS_INFO("on_button_connect_clicked get in");
  if ( ui.checkbox_use_environment->isChecked() )
  {
    if ( !qnode.init() )
    {
			showNoMasterMessage();
    }
    else
    {
			ui.button_connect->setEnabled(false);
		}
  }

  // ji zhu she zhi an xia  but  shi yong huanjing bianliang meiyou anxia
  else
  {
		if ( ! qnode.init(ui.line_edit_master->text().toStdString(),
				   ui.line_edit_host->text().toStdString()) ) {
			showNoMasterMessage();
    }
    else
    {
			ui.button_connect->setEnabled(false);
			ui.line_edit_master->setReadOnly(true);
			ui.line_edit_host->setReadOnly(true);
			ui.line_edit_topic->setReadOnly(true);
		}
	}
}


void MainWindow::on_checkbox_use_environment_stateChanged(int state) {
	bool enabled;
	if ( state == 0 ) {
		enabled = true;
	} else {
		enabled = false;
	}
	ui.line_edit_master->setEnabled(enabled);
	ui.line_edit_host->setEnabled(enabled);
	//ui.line_edit_topic->setEnabled(enabled);
}

/*****************************************************************************
** Implemenation [Slots][manually connected]
*****************************************************************************/

/**
 * This function is signalled by the underlying model. When the model changes,
 * this will drop the cursor down to the last line in the QListview to ensure
 * the user can always see the latest log message.
 */
void MainWindow::updateLoggingView(const glosa::qt_GUI::ConstPtr& msg) {
//        ui.view_logging->scrollToBottom();
//     ROS_INFO("%.1f", msg->Dis2Stopline);
     if (msg->StrColor == 3)
        ui.StrLightColor->setText("red");
     else if(msg->StrColor == 5)
        ui.StrLightColor->setText("green");
     else if (msg->StrColor == 7)
        ui.StrLightColor->setText("yellow");

     ui.StrLightColor->setFrameShape (QFrame::Box);
     ui.StrLightColor->setStyleSheet("border-width: 1px;border-style: solid;border-color: rgb(255, 170, 0);");


     ui.StrLikelyEndTime->setText(QString("%1").arg(floor(msg->StrlikelyEndTime)));

     ui.StrLikelyEndTime->setFrameShape (QFrame::Box);
     ui.StrLikelyEndTime->setStyleSheet("border-width: 1px;border-style: solid;border-color: rgb(255, 170, 0);");
//     ROS_INFO("ID = %d", msg->intersectionID);

     ui.StationID->setText(QString("%1").arg(msg->intersectionID));
     ui.StationID->setFrameShape (QFrame::Box);
     ui.StationID->setStyleSheet("border-width: 1px;border-style: solid;border-color: rgb(255, 170, 0);");

     ui.Dis2Inter->setText(QString("%1").arg(ceil(msg->Dis2Stopline)));
     ui.Dis2Inter->setFrameShape (QFrame::Box);
     ui.Dis2Inter->setStyleSheet("border-width: 1px;border-style: solid;border-color: rgb(255, 170, 0);");

     if (msg->keepCurSpeed == 1)
     {
       ui.minSpeed->setText("hold");
       ui.maxSpeed->setText("hold");
     }
     else
     {
        ui.minSpeed->setText(QString("%1").arg(ceil(msg->bottomSpeed*3.6)));
        ui.maxSpeed->setText(QString("%1").arg(floor(msg->upperSpeed*3.6)));
     }
     ui.minSpeed->setFrameShape (QFrame::Box);
     ui.minSpeed->setStyleSheet("border-width: 1px;border-style: solid;border-color: rgb(255, 170, 0);");
     ui.maxSpeed->setFrameShape (QFrame::Box);
     ui.maxSpeed->setStyleSheet("border-width: 1px;border-style: solid;border-color: rgb(255, 170, 0);");



}

/*****************************************************************************
** Implementation [Menu]
*****************************************************************************/

void MainWindow::on_actionAbout_triggered() {
    QMessageBox::about(this, tr("About ..."),tr("<h2>PACKAGE_NAME Test Program 0.10</h2><p>Copyright Yujin Robot</p><p>This package needs an about description.</p>"));
}

/*****************************************************************************
** Implementation [Configuration]
*****************************************************************************/

void MainWindow::ReadSettings() {
    QSettings settings("Qt-Ros Package", "gui");

    restoreGeometry(settings.value("geometry").toByteArray());
    restoreState(settings.value("windowState").toByteArray());

    QString master_url = settings.value("master_url",QString("http://192.168.1.2:11311/")).toString();
    QString host_url = settings.value("host_url", QString("192.168.1.3")).toString();
    //QString topic_name = settings.value("topic_name", QString("/chatter")).toString();
    ui.line_edit_master->setText(master_url);
//    ui.line_edit_master->setText("11111");
    ui.line_edit_host->setText(host_url);
    //ui.line_edit_topic->setText(topic_name);
    bool remember = settings.value("remember_settings", false).toBool();
    ui.checkbox_remember_settings->setChecked(remember);
    bool checked = settings.value("use_environment_variables", false).toBool();
    ui.checkbox_use_environment->setChecked(checked);
    if ( checked ) {
    	ui.line_edit_master->setEnabled(false);
    	ui.line_edit_host->setEnabled(false);
    	//ui.line_edit_topic->setEnabled(false);
    }
}

void MainWindow::WriteSettings() {
    QSettings settings("Qt-Ros Package", "gui");
    settings.setValue("master_url",ui.line_edit_master->text());
    settings.setValue("host_url",ui.line_edit_host->text());
    //settings.setValue("topic_name",ui.line_edit_topic->text());
    settings.setValue("use_environment_variables",QVariant(ui.checkbox_use_environment->isChecked()));
    settings.setValue("geometry", saveGeometry());
    settings.setValue("windowState", saveState());
    settings.setValue("remember_settings",QVariant(ui.checkbox_remember_settings->isChecked()));

}

void MainWindow::closeEvent(QCloseEvent *event)
{
	WriteSettings();
	QMainWindow::closeEvent(event);
}

}  // namespace gui

