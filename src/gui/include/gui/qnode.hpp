/**
 * @file /include/gui/qnode.hpp
 *
 * @brief Communications central!
 *
 * @date February 2011
 **/
/*****************************************************************************
** Ifdefs
*****************************************************************************/

#ifndef gui_QNODE_HPP_
#define gui_QNODE_HPP_

/*****************************************************************************
** Includes
*****************************************************************************/

// To workaround boost/qt4 problems that won't be bugfixed. Refer to
//    https://bugreports.qt.io/browse/QTBUG-22829
#ifndef Q_MOC_RUN
#include <ros/ros.h>
#endif
#include <string>
#include <QThread>
#include <QStringListModel>
#include <QMetaType>
#include "glosa/qt_GUI.h"


/*****************************************************************************
** Namespaces
*****************************************************************************/

namespace gui {

/*****************************************************************************
** Class
*****************************************************************************/

class QNode : public QThread {
    Q_OBJECT
public:
	QNode(int argc, char** argv );
	virtual ~QNode();
	bool init();
	bool init(const std::string &master_url, const std::string &host_url);
	void run();

	/*********************
	** Logging
	**********************/
	enum LogLevel {
	         Debug,
	         Info,
	         Warn,
	         Error,
	         Fatal
	 };

	QStringListModel* loggingModel() { return &logging_model; }
	void log( const LogLevel &level, const std::string &msg);

Q_SIGNALS:
  void loggingUpdated(const glosa::qt_GUI::ConstPtr& msg);
    void rosShutdown();

private:
	int init_argc;
	char** init_argv;
	ros::Subscriber sub_gui;
	ros::Publisher chatter_publisher;
    QStringListModel logging_model;

private:
    void gui_callback(const glosa::qt_GUI::ConstPtr& msg);
};

}  // namespace gui

#endif /* gui_QNODE_HPP_ */
