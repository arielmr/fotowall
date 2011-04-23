import QtQuick 1.0

Item {
    id: keyboardKey
    width: 500
    height: 100

    MouseArea{
        anchors.fill: parent
        onPressed: parent.state = "stateHit"
        onReleased: parent.state = ""
    }
    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        anchors.fill: parent
        color: "#00000000"
        radius: 12
        border.color: "#01beaf"
        z: -1


        Image {
            id: hit
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            smooth: true
            opacity: 0
            source: "../../../../Users/hp/Documents/UDLAP 3er/Tesis/Imagenes/digital-fingerprintgreen.png"
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
                //color: "#01beaf"
            }
        }
    ]


}
