import QtQuick 1.0
import Qt.labs.gestures 2.0

Item {
    id: keyboardKey
    width: 500
    height: 100
    signal click()

    MouseArea{
        anchors.fill: parent
        onPressed: {
            parent.state = "stateHit"
            parent.click()
        }
        onReleased: parent.state = ""
    }
    GestureArea {
        anchors.fill: parent
        Tap{
            onStarted: {
                parent.state = "stateHit"
            }
            onFinished: {
                parent.state = ""
                keyboardKey.click()
            }
        }
    }
    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        anchors.fill: parent
        color: "#00000000"
        radius: 12
        border.color: "#01beaf"
        border.width: 2
        z: -1
        smooth: true


        Image {
            id: hit
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            smooth: true
            opacity: 0
            source: "images/digital-fingerprintgreen.png"
            Behavior on opacity{
                NumberAnimation{
                    duration: 800
                    easing.type: Easing.OutExpo
                }
            }
        }

    }


    states: [
        State {
            name: "stateHit"

            PropertyChanges {
                target: hit
                x: 178
                y: 0
                opacity: 1
            }

            PropertyChanges {
                target: rectangle1
                color: "#01beaf"
            }
        }
    ]


}
