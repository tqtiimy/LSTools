//Qt
#include <QApplication>
#include <QQmlApplicationEngine>
#include <QtQml>

int main(int argc, char *argv[])
{
#ifdef Q_OS_WIN
    qputenv("QSG_RENDER_LOOP", "basic");//用于VC，其他平台用putenv
#endif

    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl("qrc:/main.qml"));

    if(engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
