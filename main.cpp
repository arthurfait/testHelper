#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "screenshoter.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    ScreenShoter screenshoter;
    engine.rootContext()->setContextProperty("screenshoter", &screenshoter);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));


    return app.exec();
}
