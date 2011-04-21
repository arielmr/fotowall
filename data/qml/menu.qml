import QtQuick 1.0
import Qt.labs.toucharea 1.0

Rectangle {
    id:pieMenu
    width: 800
    height: 600
    color: "#00000000"
    signal sToolsText()
    signal sInsertPicture()
    signal sFreehand()
    Angulo{
        id: mTools
        x: -475
        y: 240
        labelScale: 1
        transformOrigin: Item.Right
        rotation: 45
        scale: 0.4
        label: "Tools"
        onClic: {
            console.log("Menu Tools clicked!")
            parent.state = "stateTools"
            smToolsX.state = "toolsAbierto"
        }
        onRele: {
            console.log("Menu Tools clicked!")
            parent.state = ""
            smToolsX.state = ""
        }
    }
    Angulo {
        id: mInsert
        x: -475
        y: 239
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 30
        label: "Insert"
        onClic: {
            console.log("Menu Insert clicked!")
            parent.state = "stateInsert"
            smInsertX.state = "insertAbierto"
        }
        onRele: {
            console.log("Menu Insert clicked!")
            parent.state = ""
            smInsertX.state = ""
        }
    }
    Angulo {
        id: mEdit
        x: -474
        y: 237
        transformOrigin: Item.Right
        label: "Edit"
        scale: 0.4
        rotation: 15
        onClic: {
            console.log("Menu Edit clicked!")
            parent.state = "stateEdit"
            smEditX.state = "editAbierto"
        }
        onRele: {
            console.log("Menu Edit clicked!")
            parent.state = ""
            smEditX.state = ""
        }
    }
    Angulo {
        id: mNavigation
        x: -475
        y: 235
        transformOrigin: Item.Right
        label: "Navigate"
        scale: 0.4
        rotation: 0
        onClic: {
            console.log("Menu Navigation clicked!")
            parent.state = "stateNavigation"
            smNavigationX.state = "navigationAbierto"
        }
        onRele: {
            console.log("Menu Navigation clicked!")
            parent.state = ""
            smNavigationX.state = ""
        }
    }
    Angulo {
        id: mSession
        x: -476
        y: 233
        labelScale: 1
        transformOrigin: Item.Right
        scale: 0.4
        rotation: -15
        label: "Session"
        onClic: {
            console.log("Menu File clicked!")
            parent.state = "stateSession"
            smSessionX.state = "sessionAbierto"
        }
        onRele: {
            console.log("Menu File clicked!")
            parent.state = ""
            smSessionX.state = ""
        }
    }
    Angulo {
        id: mHelp
        x: -476
        y: 231
        transformOrigin: Item.Right
        label: "Help"
        scale: 0.4
        rotation: -30
        onClic: {
            console.log("Menu Help clicked!")
            parent.state = "stateHelp"
            smHelpX.state = "helpAbierto"
        }
        onRele: {
            console.log("Menu Help released!")
            parent.state = ""
            smHelpX.state = ""
        }
    }
//}
    states: [
        State {
            name: "stateTools"
            PropertyChanges {
                target: mTools
                rotation: 45
                opacity: 1
            }
            PropertyChanges {
                target: smToolsX
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
                target: mEdit
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
                target: mTools
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
                rotation: 45
                opacity: 1
            }

            PropertyChanges {
                target: smInsertX
                visible: true
                z: 1
                opacity: 1
            }

            PropertyChanges {
                target: mEdit
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
            name: "stateEdit"
            PropertyChanges {
                target: mEdit
                rotation: 45
                opacity: 1
            }
            PropertyChanges {
                target: smEditX
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
                label: Edit
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mTools
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
//                target: mTools
//                rotation: 45
//                opacity: 0
//            }
        },
        State {
            name: "stateNavigation"
            PropertyChanges {
                target: mNavigation
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
                label: "Insert"
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mEdit
                rotation: 45
                opacity: "0"
            }


            PropertyChanges {
                target: mHelp
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mTools
                rotation: 45
                opacity: 0
            }
        },
        State {
            name: "stateSession"
            PropertyChanges {
                target: mTools
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
                target: mEdit
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
                target: smToolsX
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
                target: mEdit
                rotation: 45
                opacity: "0"
            }


            PropertyChanges {
                target: mNavigation
                rotation: 45
                opacity: 0
            }

            PropertyChanges {
                target: mTools
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
//        onsToolsText: console.log("asd")
//        signal sToolsFreehand()
//        signal sToolsEraser()
//        signal sToolsFind()
    }

    SubmenuTools{
        id: smToolsX
        x: 119
        y: 117
        visible: false
        opacity: 0
        onSToolsText: parent.sToolsText()
        onSToolsFreehand: parent.sFreehand()
    }

    SubmenuInsert{
        id: smInsertX
        x: 119
        y: 117
        visible: false
        opacity: 0
        onSInsertPicture: parent.sInsertPicture()
    }
    SubmenuEdit{
        id: smEditX
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


