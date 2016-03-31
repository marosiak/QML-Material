import QtQuick 2.5
import QtGraphicalEffects 1.0

Flickable {
    width: 214
    height: parent.height
    boundsBehavior: Flickable.StopAtBounds
    flickableDirection: Flickable.HorizontalFlick
    contentWidth: leftBox.width*2
    onMovementEnded: { console.log(contentX)
        if(contentX == 214){
            shadow.color = "transparent"
        }
        else{
            shadow.color = "#80000000"
        }

    }
    onMovementStarted: { console.log(contentX)
        if(contentX == 214){
            shadow.color = "#80000000"
        }

    }
    Rectangle {
        id: leftBox
        width: 214
        height: window.height
        Rectangle {
            id: shadow_rec
            width: 12
            height: parent.height
            anchors.left: parent.right
            anchors.leftMargin: -(shadow.width)
        }
        DropShadow {
            id: shadow
            anchors.fill: shadow_rec
            horizontalOffset: 5
            verticalOffset: 6
            radius: 7.0
            anchors.right: shadow.right
            anchors.rightMargin: 0
            samples: 6
            color: "#80000000"
            source: shadow_rec
        }
        // Content here
        ListView {
            id: listview
            width: parent.width; height: parent.height
            interactive: false
            delegate: ListItem {
                width: parent.width
                itemText: itext
            }
        }
        // Content here
    }
}
