import QtQuick 1.0

Rectangle {
    id: rectangle1
    width: 450
    height: 300
    color: "transparent"
    signal sHelpGestures()
    signal sHelpCollaboration()




SubAngulo {
        id: smGestures
        x: -595
        y: 120
        opacity: 0.3
        visible: true
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
        id: smCollaboration
        x: -595
        y: 120
        opacity: 0.3
        visible: true
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Collaboration"
        onClic: {
            console.log("SubMenu Collaboration clicked!")
            parent.state = "helpAbierto"
            parent.sHelpCollaboration()
        }
    }




    states: [
        State {
            name: "helpAbierto"



            PropertyChanges {
                target: smGestures
                x: -595
                y: 115
                opacity: 1
                rotation: 30
                visible: true
            }

            PropertyChanges {
                target: smCollaboration
                x: -595
                y: 112
                opacity: 1
                rotation: 15
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
