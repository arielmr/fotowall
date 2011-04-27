import QtQuick 1.0

Rectangle {
    id: rectangle1
    width: 450
    height: 300
    color: "#00000000"
    signal sHelpGestures()
    signal sHelpIdeas()
SubAngulo {
        id: smGestures
        x: -595
        y: 120
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Gestures"
        onClic: {
            console.log("SubMenu Gestures clicked!")
            parent.state = "helpAbierto"
            parent.sHelpGestures()
        }
    }
SubAngulo {
        id: smIdeas
        x: -595
        y: 120
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Ideas"
        onClic: {
            console.log("SubMenu Ideas clicked!")
            parent.state = "helpAbierto"
            parent.sHelpIdeas()
        }
    }
    states: [
        State {
            name: "helpAbierto"
            PropertyChanges {
                target: smGestures
                x: -595
                y: 112
                opacity: 1
                rotation: 30
                visible: true
            }

            PropertyChanges {
                target: smIdeas
                x: -595
                y: 109
                opacity: 1
                rotation: 15
                visible: true
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
