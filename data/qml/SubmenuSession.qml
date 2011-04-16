import QtQuick 1.0

Rectangle {
    id: rectangle1
    width: 450
    height: 300
    color: "transparent"
    //visible: false
    signal sSessionSend()
    signal sSessionPrint()
    signal sSessionNewUser()
    signal sSessionRemoveUser()

    SubAngulo {
        id: smSend
        x: -595
        y: 122
        opacity: 0.0
        visible: true
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Send"
        onClic: {
            console.log("SubMenu Send clicked!")
            parent.state = "sessionAbierto"
            parent.sSessionSend()
        }
    }

    SubAngulo {
        id: smPrint
        x: -595
        y: 120
        opacity: 0.0
        visible: true
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Print"
        onClic: {
            console.log("SubMenu Print clicked!")
            parent.state = "sessionAbierto"
            parent.sSessionPrint()
        }
    }

    SubAngulo {
            id: smNewUser
            x: -595
            y: 120
            opacity: 0.3
            visible: true
            labelScale: 0.8
            transformOrigin: Item.Right
            scale: 0.4
            rotation: 45
            label: "New User"
            onClic: {
                console.log("SubMenu NewUser clicked!")
                parent.state = "sessionAbierto"
                parent.sHelpNewUser()
            }
        }

    SubAngulo {
            id: smRemoveUser
            x: -595
            y: 120
            opacity: 0.3
            visible: true
            labelScale: 0.8
            transformOrigin: Item.Right
            scale: 0.4
            rotation: 45
            label: "Remove User"
            onClic: {
                console.log("SubMenu RemoveUser clicked!")
                parent.state = "sessionAbierto"
                parent.sHelpNewUser()
            }
        }

    states: [
        State {
            name: "sessionAbierto"

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
            PropertyChanges {
                target: smNewUser
                x: -595
                y: 117
                opacity: 1
                rotation: 0
                visible: true
            }
            PropertyChanges {
                target: smRemoveUser
                x: -595
                y: 114
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
