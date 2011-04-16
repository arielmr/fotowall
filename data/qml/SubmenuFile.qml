import QtQuick 1.0

Rectangle {
    id: rectangle1
    width: 450
    height: 300
    color: "transparent"
    //visible: false

    SubAngulo {
        id: smSend
        x: -595
        y: 122
        opacity: 0.0
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Send"
        onClic: {
            console.log("SubMenu Send clicked!")
            parent.state = "fileAbierto"
        }
        onRele: {
            parent.state = ""
        }
    }
    SubAngulo {
        id: smPrint
        x: -595
        y: 120
        opacity: 0.0
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Print"
        onClic: {
            console.log("SubMenu Print clicked!")
            parent.state = "fileAbierto"
        }
        onRele: {
            parent.state = ""
        }
    }
    states: [
        State {
            name: "fileAbierto"

            PropertyChanges {
                target: smPrint
                opacity: 1
                rotation: 15
                visible: true
            }

            PropertyChanges {
                target: smSend
                opacity: 1
                rotation: 30
                visible: true
            }
        }
    ]
    transitions: [
        Transition {
            NumberAnimation {
                properties: "opacity"
                duration: 1600
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
