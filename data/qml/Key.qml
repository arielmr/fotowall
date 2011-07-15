import QtQuick 1.0
import Qt.labs.gestures 2.0
Rectangle {
    id: keyboardKey
    width: 100
    height: 100
    color: "#0c0c0c00"
    property alias keyLabel: key.text

    signal clicked()
    MouseArea{
        anchors.fill: keyboardKey
        onPressed: {
            parent.state = "stateHit"
        }
        onReleased:{
            parent.state = ""
        }
        onClicked: {
            parent.clicked()
        }
    }
    Rectangle {
        id: backbut
        x: 9
        y: 27
        width: 200
        height: 200
        color: "#01beaf"
        radius: 18
        opacity: 0.0
        anchors.fill: parent
        Behavior on opacity {
            NumberAnimation{
                duration: 800
                easing.type: Easing.OutElastic
            }
        }
    }
    GestureArea {
        id: gestureArea
        anchors.fill: keyboardKey
        property bool tap: false
        Tap{
            onFinished: {
                parent.state = "stateHit"
                console.log("TAP")
                keyboardKey.clicked()
            }
        }
    }
    Image {
        id: hit
        x: 0
        y: 0
        width: 100
        height: 100
        visible: false
        opacity: 0.0
        source: "images/digital-fingerprintgreen.png"
        Behavior on opacity{
            NumberAnimation{
                duration: 1200
                easing.type: Easing.OutElastic
            }
        }        
    }
    Text {
        id: key
        x: 11
        y: 40
        width: 80
        height: 20
        text: "X"
        style: Text.Raised
        font.underline: false
        font.strikeout: false
        font.italic: false
        font.bold: true
        font.family: "Sans Serif"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 60
        color: "#01beaf"
    }
    states: [
        State {
            name: "stateHit"
            when: gestureArea.tap
            PropertyChanges {
                target: hit
                opacity: 1
            }
            PropertyChanges {
                target: key
                color: "#ffffff"
            }
            PropertyChanges {
                target: backbut
                opacity: 1
            }
//            onCompleted: keyboardKey.state= ""
        }
    ]


}
