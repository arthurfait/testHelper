#include "screenshoter.h"

ScreenShoter::ScreenShoter(QObject *parent) : QObject(parent)
{

}

void ScreenShoter::takeScreenShot()
{
    emit screenShotDone("test");
}
