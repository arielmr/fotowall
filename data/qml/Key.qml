import QtQuick 1.0

Rectangle {
    id: keyboardKey
    width: 100
    height: 100
    color: "#0c0c0c00"
    property alias keyLabel: key.text

    signal clicked()
    MouseArea{
        anchors.fill: parent
        onPressed: {
            parent.state = "stateHit"
        }
        onReleased:{
            parent.state = ""
        }
        onClicked: {
//            console.log (keyLabel)
            parent.clicked()
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
                duration: 800
                easing.type: Easing.OutExpo
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
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 60
        color: "#01beaf"
    }

    states: [
        State {
            name: "stateHit"

            PropertyChanges {
                target: hit
                opacity: 1
            }
        }
    ]


}
