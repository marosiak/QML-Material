import QtQuick 2.5
import QtGraphicalEffects 1.0

Item {
    id: item
    height: 62
    implicitWidth : parent.width
    property color barColor: "#2196F3"
    property color menuColor: "white"
    signal menuClicked
    //property alias listModel: listview.model
    Rectangle {
        id: rectangle
        width: parent.width
        height: 56
        color: barColor
        Item {
            id: item2
            width: parent.height
            height: parent.height
            anchors.left: parent.left
            anchors.leftMargin: 0
            Image {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                source: "./icons/menu.png"
                width: parent.width - 25
                height: parent.width - 25
                PaperRipple {
                    id: ripple
                    radius: 100
                    mouseArea: mouseArea
                }

            }
            MouseArea {
                id: mouseArea
                width: parent.width
                height: parent.height
                onClicked: item.menuClicked()
            }
        }
    }
    DropShadow {
        anchors.fill: rectangle
        horizontalOffset: 0
        verticalOffset: 1
        radius: 7.0
        samples: 6
        color: "#80000000"
        source: rectangle
    }

}
