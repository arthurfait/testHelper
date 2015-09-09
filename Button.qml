import QtQuick 2.3

Rectangle {
    property color releaseColor: "#66000000"
    property color pressColor: "#b3000000"
    property alias text: buttonText.text
    property alias textVisible: buttonText.visible
    property alias textColor: buttonText.color
    property alias textWrap: buttonText.wrapMode
    property alias textRotation: buttonText.rotation
    property alias font: buttonText.font.family
    property alias fontSize: buttonText.font.pixelSize
    property alias imageUrl: buttonImage.source
    property alias imageOpacity: buttonImage.opacity
    property alias imageWidth: buttonImage.width
    property alias imageHeight: buttonImage.height
    property bool  pressed: false

    signal clicked()
    signal pressAndHold()
    signal pressed()
    signal released()

    onPressedChanged: {
        if (pressed) {
            color = pressColor
        } else {
            color = releaseColor
        }
    }

    id: button
    color: releaseColor
    width: 80
    height: 60

    Text {
        id: buttonText
        anchors.centerIn: parent;
        color: "#ffffff"
        wrapMode: Text.NoWrap
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

    Image {
        id: buttonImage
        anchors.centerIn: parent
        smooth: true
        visible: true
        antialiasing: true
        transformOrigin: Item.Center
    }

    MouseArea {
        id: buttonMouseArea
        anchors.fill: parent
        onPressed: {
            parent.color = pressColor
            parent.pressed()
        }
        onReleased: {
            if (parent.pressed === false) {
                parent.color = releaseColor
            }
            parent.released()
        }
        onClicked: parent.clicked()
        onPressAndHold: parent.pressAndHold()
    }
}
