import QtQuick 1.0

Rectangle {
    id:toolbar
    width: 500
    height: 60
    color: "#00000000"

    signal requestLink()
    signal requestRemoval()

    ItemMenuPrincipal {
        id: itemMenuPrincipal1
        x: -23
        y: -21
        color: "transparent"
        scale: 0.4
        itemImage: "images/menuComun/undo.png"

        onClicked: {
            if (itemMenuPrincipal10.state=="")
                console.log("undo clicked")
        }
    }
    ItemMenuPrincipal {
        id: itemMenuPrincipal2
        x: 27
        y: -21
        color: "transparent"
        scale: 0.4
        itemImage: "images/menuComun/redo.png"

        onClicked: {
            if (itemMenuPrincipal10.state=="")
                console.log("redo clicked")
        }
    }
    ItemMenuPrincipal {
        id: itemMenuPrincipal3
        x: 77
        y: -21
        color: "transparent"
        scale: 0.4
        itemImage: "images/menuComun/delete.png"
        onClicked: {
            toolbar.requestRemoval()
//            if (itemMenuPrincipal10.state=="")
//                console.log("delete clicked")
        }
    }

    ItemMenuPrincipal {
        id: itemMenuPrincipal4
        x: 127
        y: -21
        color: "#00000000"
        itemImage: "images/menuComun/authors.png"
        scale: 0.4

        onClicked: {
            if (itemMenuPrincipal10.state=="")
                console.log("authors clicked")
        }
    }

    ItemMenuPrincipal {
        id: itemMenuPrincipal5
        x: 177
        y: -21
        color: "#00000000"
        itemImage: "images/menuComun/bringfront.png"
        scale: 0.4

        onClicked: {
            if (itemMenuPrincipal10.state=="")
                console.log("bringfront clicked")
        }

    }

    ItemMenuPrincipal {
        id: itemMenuPrincipal6
        x: 227
        y: -21
        color: "#00000000"
        itemImage: "images/menuComun/sendback.png"
        scale: 0.4

        onClicked: {
            if (itemMenuPrincipal10.state=="")
                console.log("sendback clicked")
        }

    }

    LockUnlock {
        id: itemmenu7
        x: 277
        y: -21
        color: "#00000000"
        //itemImage: "images/menuComun/unlock.png"
        scale: 0.4

//        onClicked: {
//            if (itemMenuPrincipal10.state=="")
//                console.log("unlock clicked")
//        }
        onShiftSpecial: {
            if (itemmenu7.state=="")
                console.log("Unlock")
            else
                console.log("Lock")
        }

    }

    ItemMenuPrincipal {
        id: itemMenuPrincipal8
        x: 327
        y: -21
        color: "#00000000"
        itemImage: "images/menuComun/cut.png"
        scale: 0.4

        onClicked: {
            if (itemMenuPrincipal10.state=="")
                console.log("cut clicked")
        }

    }

    ItemMenuPrincipal {
        id: itemMenuPrincipal9
        x: 377
        y: -21
        color: "#00000000"
        itemImage: "images/menuComun/copy.png"
        scale: 0.4

        onClicked: {
            if (itemMenuPrincipal10.state=="")
                console.log("copy clicked")
        }

    }

    ItemMenuPrincipal {
        id: itemMenuPrincipal10
        x: 427
        y: -21
        color: "#00000000"
        itemImage: "images/menuComun/newLink.png"
        scale: 0.4

        onClicked: {
//            if (itemMenuPrincipal10.state=="")
//                console.log("Link clicked")
            console.log("Link clicked")
            toolbar.requestLink()
        }

    }





    states: [
        State {
            name: "selectedItem"

//            PropertyChanges {
//                target: key2
//                keyLabel: "1"
//            }

            PropertyChanges {
                target: keyboard
                visible: true
            }

            PropertyChanges {
                target: itemMenuPrincipal1
            }

            PropertyChanges {
                target: itemMenuPrincipal2
            }

            PropertyChanges {
                target: itemMenuPrincipal3
            }





        }
    ]

}


