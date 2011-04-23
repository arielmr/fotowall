import QtQuick 1.0

Rectangle {
    id:pieMenu
    width: 800
    height: 600
    color: "#00000000"
    signal sInsertText()
    signal sInsertPicture()
    signal sFreehand()

    CirclePro{
        x: 361
        y: 238
        width: 180
        height: 244
        z: 10
        scale: 0.7
        smooth: true
    }
    Angulo {
        id: mInsert
        x: -477
        y: 242
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Insert"
        onClic: {
            //console.log("Menu Insert clicked!")
            parent.state = "stateInsert"
            smInsertX.state = "insertAbierto"
        }
        onRele: {
            //console.log("Menu Insert clicked!")
            parent.state = ""
            smInsertX.state = ""
        }
    }
    Angulo{
        id: mDraw
        x: -476
        y: 239
        labelScale: 1
        transformOrigin: Item.Right
        rotation: 30
        scale: 0.4
        label: "Draw"
        onClic: {
            //console.log("Menu Draw clicked!")
            parent.state = "stateDraw"
            smDrawX.state = "drawAbierto"
        }
        onRele: {
            //console.log("Menu Draw clicked!")
            parent.state = ""
            smDrawX.state = ""
        }
    }

    Angulo {
        id: mAction
        x: -474
        y: 237
        transformOrigin: Item.Right
        label: "Action"
        scale: 0.4
        rotation: 15
        onClic: {
            //console.log("Menu Action clicked!")
            parent.state = "stateAction"
            smActionX.state = "actionAbierto"
        }
        onRele: {
            //console.log("Menu Action clicked!")
            parent.state = ""
            smActionX.state = ""
        }
    }
    Angulo {
        id: mNavigation
        x: -474
        y: 234
        transformOrigin: Item.Right
        label: "Navigate"
        scale: 0.4
        rotation: 0
        onClic: {
            //console.log("Menu Navigation clicked!")
            parent.state = "stateNavigation"
            smNavigationX.state = "navigationAbierto"
        }
        onRele: {
            //console.log("Menu Navigation clicked!")
            parent.state = ""
            smNavigationX.state = ""
        }
    }
    Angulo {
        id: mSession
        x: -475
        y: 232
        labelScale: 1
        transformOrigin: Item.Right
        scale: 0.4
        rotation: -15
        label: "Session"
        onClic: {
            //console.log("Menu File clicked!")
            parent.state = "stateSession"
            smSessionX.state = "sessionAbierto"
        }
        onRele: {
            //console.log("Menu File clicked!")
            parent.state = ""
            smSessionX.state = ""
        }
    }
    Angulo {
        id: mHelp
        x: -476
        y: 230
        transformOrigin: Item.Right
        label: "Help"
        scale: 0.4
        rotation: -30
        onClic: {
            //console.log("Menu Help clicked!")
            parent.state = "stateHelp"
            smHelpX.state = "helpAbierto"
        }
        onRele: {
            //console.log("Menu Help released!")
            parent.state = ""
            smHelpX.state = ""
        }
    }
//}
    states: [
        State {
            name: "stateDraw"
            PropertyChanges {
                target: mDraw
                rotation: 45
                opacity: 1
            }
            PropertyChanges {
                target: smDrawX
                visible: true
                z: 1
                opacity: 1
            }
            PropertyChanges {
                target: mInsert
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mSession
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mAction
                x: -473
                y: 236
                rotation: 45
                opacity: 0
            }
            PropertyChanges {
                target: mNavigation
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mHelp
                rotation: 45
                opacity: 0
            }
        },
        State {
            name: "stateInsert"

            PropertyChanges {
                target: mDraw
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mSession
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mInsert
                x: -478
                y: 234
                rotation: 45
                opacity: 1
            }

            PropertyChanges {
                target: smInsertX
                x: 119
                y: 114
                visible: true
                z: 1
                opacity: 1
            }

            PropertyChanges {
                target: mAction
                rotation: 45
                opacity: 0
            }
            PropertyChanges {
                target: mNavigation
                opacity: 0
                rotation: 45
            }
            PropertyChanges {
                target: mHelp
                rotation: 45
                opacity: 0
            }
        },
        State {
            name: "stateAction"
            PropertyChanges {
                target: mAction
                rotation: 45
                opacity: 1
            }
            PropertyChanges {
                target: smActionX
                visible: true
                z: 1
                opacity: 1
            }

            PropertyChanges {
                target: mSession
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mInsert
                label: Action
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mDraw
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mNavigation
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mHelp
                rotation: 45
                opacity: 0
            }

//            PropertyChanges {
//                target: mDraw
//                rotation: 45
//                opacity: 0
//            }
        },
        State {
            name: "stateNavigation"
            PropertyChanges {
                target: mNavigation
                x: -476
                y: 237
                rotation: 45
                opacity: 1
            }
            PropertyChanges {
                target: smNavigationX
                visible: true
                z: 1
                opacity: 1
            }

            PropertyChanges {
                target: mSession
                rotation: 45
                opacity: "0"
            }

            PropertyChanges {
                target: mInsert
                x: -477
                y: 242
                label: "Insert"
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mAction
                rotation: 45
                opacity: "0"
            }


            PropertyChanges {
                target: mHelp
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mDraw
                rotation: 45
                opacity: 0
            }
        },
        State {
            name: "stateSession"
            PropertyChanges {
                target: mDraw
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mInsert
                rotation: 45
                opacity: 0
            }


            PropertyChanges {
                target: mNavigation
                rotation: 45
                opacity: 0
            }
            PropertyChanges {
                target: mHelp
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mAction
                rotation: 45
                opacity: 0
            }
            PropertyChanges {
                target: smSessionX
                rotation: 0
                z: 1
                opacity: 1
            }


            PropertyChanges {
                target: smDrawX
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: smInsertX
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: mSession
                x: -478
                y: 239
                rotation: 45
            }

//            PropertyChanges {
//                target: smHelpX
//                visible: false
//                opacity: 1
//            }

        },
        State {
            name: "stateHelp"
            PropertyChanges {
                target: mHelp
                rotation: 45
                opacity: 1
            }
            PropertyChanges {
                target: smHelpX
                visible: true
                z: 1
                opacity: 1
            }

            PropertyChanges {
                target: mSession
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mInsert
                label: "Insert"
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mAction
                rotation: 45
                opacity: "0"
            }


            PropertyChanges {
                target: mNavigation
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mDraw
                rotation: 45
                opacity: 0
            }
        }
    ]

    SubmenuSession{
        id: smSessionX
        x: 119
        y: 117
        opacity: 0        
    }

    SubmenuDraw{
        id: smDrawX
        x: 119
        y: 117
        visible: false
        opacity: 0

        onSDrawFreehand: parent.sFreehand()
    }

    SubmenuInsert{
        id: smInsertX
        x: 119
        y: 117
        visible: false
        opacity: 0
        onSInsertText: parent.sInsertText()
        onSInsertPicture: parent.sInsertPicture()
    }
    SubmenuAction{
        id: smActionX
        x: 119
        y: 117
        visible: false
        opacity: 0
    }
    SubmenuNavigation{
        id: smNavigationX
        x: 119
        y: 117
        visible: false
        opacity: 0
    }
    SubmenuHelp{
        id: smHelpX
        x: 119
        y: 117
        visible: false
        opacity: 0
    }

    transitions: [
        Transition {
            NumberAnimation {
                properties: "opacity"
                duration: 400
                easing.type: Easing.OutQuint
            }
            NumberAnimation {
                properties: "rotation"
                duration: 800
                easing.type: Easing.OutQuint
            }
        }
    ]
}


