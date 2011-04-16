import QtQuick 1.0

Rectangle {
    id: rectangle1
    width: 450
    height: 300
    color: "transparent"
    visible: false
    signal sToolsText()
    signal sToolsFreehand()
    signal sToolsEraser()
    signal sToolsFind()



SubAngulo {
        id: smText
        x: -595
        y: 122
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Text"
        onClic: {
            console.log("SubMenu Text clicked!")
            parent.state = "toolsAbierto"
            parent.sToolsText()
        }
    }
SubAngulo {
        id: smFreehand
        x: -595
        y: 120
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Freehand"
        onClic: {
            console.log("SubMenu Freehand clicked!")
            parent.state = "toolsAbierto"
            parent.sToolsFreehand()
        }
    }

SubAngulo {
        id: smEraser
        x: -595
        y: 120
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Eraser"
        onClic: {
            console.log("SubMenu Eraser clicked!")
            parent.state = "toolsAbierto"
            parent.sToolsEraser()
        }
    }

SubAngulo {
        id: smFind
        x: -595
        y: 120
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Find"
        onClic: {
            console.log("SubMenu Find clicked!")
            parent.state = "toolsAbierto"
            parent.sToolsFind()
        }
    }


    states: [
        State {
            name: "toolsAbierto"

            PropertyChanges {
                target: smText
                x: -594
                y: 118
                opacity: 1
                rotation: 30
                visible: true
            }

            PropertyChanges {
                target: smFreehand
                x: -595
                y: 115
                opacity: 1
                rotation: 15
                visible: true
            }

            PropertyChanges {
                target: smEraser
                x: -595
                y: 112
                opacity: 1
                rotation: 0
                visible: true
            }
            PropertyChanges {
                target: smFind
                x: -595
                y: 110
                opacity: 1
                rotation: -15
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
