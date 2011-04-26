import QtQuick 1.0

Item {
    id: keyboardKey
    width: 100
    height: 40

    signal shiftSpecial()

    MouseArea{
        x: 0
        y: 0
        width: 100
        height: 40
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.fill: parent
        onPressed: parent.state = "stateHit"
        onReleased: parent.state = ""
        onClicked: {
            keyboardKey.shiftSpecial()
        }
    }
    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 100
        height: 50
        anchors.fill: parent
        color: "#00000000"
        radius: 12
        anchors.bottomMargin: 1
        anchors.topMargin: 1
        anchors.leftMargin: 1
        anchors.rightMargin: 1
        z: -1


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

    Text {
        id: text1
        x: 11
        y: 10
        width: 80
        height: 20
        //text: ".?123"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 25
        color: "#01beaf"
        text: "INTRO"
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

            PropertyChanges {
                target: text1
                text: "INTRO"
                horizontalAlignment: "AlignHCenter"
            }
        }
    ]


}
