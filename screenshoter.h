#ifndef SCREENSHOTER_H
#define SCREENSHOTER_H

#include <QObject>
#include <QString>

class ScreenShoter : public QObject
{
    Q_OBJECT
public:
    explicit ScreenShoter(QObject *parent = 0);

signals:
    void screenShotDone(QString path);

public slots:
    Q_INVOKABLE void takeScreenShot();

};

#endif // SCREENSHOTER_H
