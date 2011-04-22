import QtQuick 1.0

Rectangle {
    id: rectangle1
    width: 450
    height: 300
    color: "transparent"
    signal sInsertPicture()
    signal sInsertTable()
    signal sInsertSpeechToText()
    signal sInsertFile()
    signal sInsertObject()


SubAngulo {
        id: smPicture
        x: -595
        y: 122
        opacity: 0.3
        visible: true
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Picture"
        onClic: {
            //console.log("SubMenu Picture clicked!")
            parent.state = "insertAbierto"
            parent.sInsertPicture()
        }
    }

SubAngulo {
        id: smTable
        x: -595
        y: 120
        opacity: 0.3
        visible: true
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Table"
        onClic: {
            //console.log("SubMenu Table clicked!")
            parent.state = "insertAbierto"
            parent.sInsertTable()
        }
    }

SubAngulo {
        id: smSpeechToText
        x: -595
        y: 120
        opacity: 0.3
        visible: true
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Speech"
        onClic: {
            //console.log("SubMenu SpeechToText clicked!")
            parent.state = "insertAbierto"
            parent.sInsertSpeechToText()
        }
    }

SubAngulo {
        id: smFile
        x: -595
        y: 120
        opacity: 0.3
        visible: true
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "File"
        onClic: {
            //console.log("SubMenu File clicked!")
            parent.state = "insertAbierto"
            parent.sInsertFile()
        }
    }

SubAngulo {
        id: smObject
        x: -595
        y: 120
        opacity: 0.3
        visible: true
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Object"
        onClic: {
            //console.log("SubMenu Object clicked!")
            parent.state = "insertAbierto"
            parent.sInsertObject()
        }
    }


    states: [
        State {
            name: "insertAbierto"

            PropertyChanges {
                target: smPicture
                x: -594
                y: 118
                opacity: 1
                rotation: 30
                visible: true
            }

            PropertyChanges {
                target: smTable
                x: -595
                y: 115
                opacity: 1
                rotation: 15
                visible: true
            }

            PropertyChanges {
                target: smSpeechToText
                x: -595
                y: 112
                opacity: 1
                rotation: 0
                visible: true
            }
            PropertyChanges {
                target: smFile
                x: -595
                y: 110
                opacity: 1
                rotation: -15
                visible: true
            }
            PropertyChanges {
                target: smObject
                x: -595
                y: 107
                opacity: 1
                rotation: -30
                visible: true
            }

            PropertyChanges {
                target: rectangle1
                height: 400
            }
        }
    ]
    transitions: [
        Transition {
            NumberAnimation {
                properties: "opacity"
                duration: 800
                easing.type: Easing.OutQuint
            }
            NumberAnimation {
                properties: "rotation"
                duration: 1600
                easing.type: Easing.OutQuint
            }
        }
    ]


}
