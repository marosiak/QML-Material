import QtQuick 2.6
import QtQuick.Controls 1.5
import QtGraphicalEffects 1.0
import "material"

ApplicationWindow {
    id: window // must be window
    visible: true
    width: 640
    height: 492
    title: qsTr("Hello World")
    Card {
        id: card1
        x: 92
        y: 132
        width: 363
        height: 151
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Button {
            id: button1
            x: 292
            y: 114
            width: 56
            height: 25
            buttonText: "Agree"
        }

        Button {
            id: button2
            x: 211
            y: 114
            width: 69
            height: 25
            buttonText: "Disagree"
        }

        MatText {
            id: matText1
            x: 12
            y: 42
            width: 334
            type: "body"
            height: 59
            matText: "Lorem Ipsum Jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki."
        }

        MatText {
            id: matText2
            x: 12
            y: 12
            width: 334
            height: 19
            type: qsTr("title")
            matText: "Title here"
        }
    }

    FloatingButton {
        id: floatingButton1
        anchors.right: parent.right
        anchors.rightMargin: 14
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 14
    }
    ToolBar {}
    LeftCard {}
}
