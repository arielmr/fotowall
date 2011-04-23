import QtQuick 1.0

Rectangle {
    id: keyboardKey
    width: 100
    height: 100
    color: "#0c0c0c"
    property alias keyLabel: key.text

    signal clic()
    signal letterClicked(string Label)
    signal letterReleased()


    Image {
        id: hit
        x: 0
        y: 0
        width: 100
        height: 100
        opacity: 0.0
        source: "../../../../Users/hp/Documents/UDLAP 3er/Tesis/Imagenes/digital-fingerprintgreen.png"
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
    MouseArea{
        anchors.fill: parent
        onPressed: {
            parent.state = "stateHit"
            console.log (keyLabel)
            keyboardKey.letterClicked(keyLabel)
            keyboardKey.clic()

        }
        onReleased:{
            parent.state = ""
            keyboardKey.letterReleased()
        }
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
