import QtQuick 1.0

Rectangle {
    id: rectangle1
    width: 450
    height: 300
    color: "#00000000"
    opacity: 1
    visible: false
    signal sActionPaste()
    signal sActionPrint()
    signal sActionSend()
    signal sActionFind()
    signal sActionAlignIdeas()


SubAngulo {
        id: smPaste
        x: -595
        y: 122
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Paste"
        onClic: {
            console.log("SubMenu Paste clicked!")
            parent.state = "actionAbierto"
            parent.sActionPaste()
        }
    }
SubAngulo {
        id: smPrint
        x: -595
        y: 120
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Print"
        onClic: {
            console.log("SubMenu Print clicked!")
            parent.state = "actionAbierto"
            parent.sActionPrint()
        }
    }
SubAngulo {
        id: smSend
        x: -595
        y: 120
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Send"
        onClic: {
            console.log("SubMenu Send clicked!")
            parent.state = "actionAbierto"
            parent.sActionSend()
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
            parent.state = "actionAbierto"
            parent.sActionFind()
        }
    }
SubAngulo {
        id: smAlignIdeas
        x: -595
        y: 120
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Align Ideas"
        onClic: {
            console.log("SubMenu AlignIdeas clicked!")
            parent.state = "actionAbierto"
            parent.sActionAlignIdeas()
        }
    }



    states: [
        State {
            name: "actionAbierto"

            PropertyChanges {
                target: smPaste
                x: -594
                y: 118
                opacity: 1
                rotation: 30
                visible: true
            }

            PropertyChanges {
                target: smPrint
                x: -595
                y: 115
                opacity: 1
                rotation: 15
                visible: true
            }

            PropertyChanges {
                target: smSend
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
                target: smAlignIdeas
                x: -595
                y: 108
                opacity: 1
                rotation: -30
                visible: true
            }

            PropertyChanges {
                target: rectangle1
                height: 500
                color: "#001f7c49"
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
