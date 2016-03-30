import QtQuick 2.6
import QtQuick.Controls 1.5
import "material"

ApplicationWindow {
    id: applicationWindow1
    visible: true
    width: 640
    height: 491
    title: qsTr("Hello World")

    ColorButton {
        id: colorButton1
        x: 12
        y: 11
        z: 0
        rotation: 0
        transformOrigin: Item.Center
    }

    Card {
        id: card1
        x: 96
        y: 137
        width: 362
        height: 182
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Button {
            id: button1
            x: 291
            y: 141
            width: 56
            height: 25
            buttonText: "Agree"
        }

        Button {
            id: button2
            x: 216
            y: 141
            width: 69
            height: 25
            buttonText: "Disagree"
        }

        MatText {
            id: matText1
            x: 23
            y: 45
            width: 324
            type: "body"
            height: 90
            matText: "Lorem Ipsum Jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki."
        }

        MatText {
            id: matText2
            x: 23
            y: 16
            width: 226
            height: 19
            type: qsTr("title")
            matText: "Title here"
        }
    }

}
