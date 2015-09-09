import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    width: 360
    height: 360

    Connections {
        target: screenshoter
        onScreenShotDone: {
            print (path)
        }
    }

    Connections {
        target: screenshot
        onClicked: {
            screenshoter.takeScreenShot()
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    Text {
        id: info
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }

    Button {
            id: screenshot
            text: qsTr("Browse")
            x: 52
            y: 42
            width:80
//            font: helvetica.name
            fontSize: 19
    }
}
