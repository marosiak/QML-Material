import QtQuick 2.5
import QtGraphicalEffects 1.0


Item {
    id: item1
    width: 150
    height: 100
    Rectangle {
        id: rec
        width: parent.width-10
        height: parent.height-10
        color: "white"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        radius: 2
    }
    DropShadow {
        //anchors.fill: rec
        width: rec.width
        height: rec.height
        horizontalOffset: 0
        verticalOffset: 0
        radius: 7
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        samples: 10
        color: "#80000000"
        source: rec
    }
}
