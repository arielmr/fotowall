import QtQuick 1.0

Rectangle {
    id: rectangle1
    width: 450
    height: 300
    color: "transparent"
    signal sEditCut()
    signal sEditCopy()
    signal sEditPaste()


SubAngulo {
        id: smCut
        x: -595
        y: 122
        opacity: 0.3
        visible: true
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Cut"
        onClic: {
            console.log("SubMenu Cut clicked!")
            parent.state = "editAbierto"
            parent.sEditCut()
        }
    }
SubAngulo {
        id: smCopy
        x: -595
        y: 120
        opacity: 0.3
        visible: true
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Copy"
        onClic: {
            console.log("SubMenu Copy clicked!")
            parent.state = "editAbierto"
            parent.sEditCopy()
        }
    }

SubAngulo {
        id: smPaste
        x: -595
        y: 120
        opacity: 0.3
        visible: true
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Paste"
        onClic: {
            console.log("SubMenu Paste clicked!")
            parent.state = "editAbierto"
            parent.sEditPaste()
        }
    }




    states: [
        State {
            name: "editAbierto"

            PropertyChanges {
                target: smCut
                x: -594
                y: 118
                opacity: 1
                rotation: 30
                visible: true
            }

            PropertyChanges {
                target: smCopy
                x: -595
                y: 115
                opacity: 1
                rotation: 15
                visible: true
            }

            PropertyChanges {
                target: smPaste
                x: -595
                y: 112
                opacity: 1
                rotation: 0
                visible: true
            }


            PropertyChanges {
                target: rectangle1
                height: 500
                color: "transparent"
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
