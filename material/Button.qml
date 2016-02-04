import QtQuick 2.0
import "."

Rectangle {
        property color buttonColor
        id: rectangle1
        color: buttonColor
    PaperRipple {
        id: ripple
        radius: 3 * dp
        mouseArea: mouseArea
        }
    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }
}

