import QtQuick 1.0

Rectangle {
    id:keyboard
    width: 100
    height: 300
    color: "#000000"

    signal shiftSpecial()

    MouseArea{
        x: 23
        y: 0
        width: 50
        height: 261
        anchors.leftMargin: 22
        anchors.topMargin: 0
        anchors.rightMargin: 28
        anchors.bottomMargin: 39
        anchors.fill: parent

        onClicked: {
            if (parent.state == "selectedItem"){
                parent.state = ""
                parent.shiftSpecial()
                console.log("Button was clicked!")
            }
            else{
                parent.state = "selectedItem"
                parent.shiftSpecial()
                console.log("Button was clicked 222!")
            }
        }
    }



    ItemMenu {
        id: itemmenu1
        x: -3
        y: -25
        color: "transparent"
        scale: 0.5
        itemImage: "images/menuComun/bold2.png"

        onShiftSpecial: {
            if (itemmenu1.state=="")
                console.log("Negrita desactivada")
            else
                console.log("Negrita activada")
        }
    }
    ItemMenu {
        id: itemmenu2
        x: -3
        y: 25
        color: "transparent"
        scale: 0.5
        itemImage: "images/menuComun/italic2.png"

        onShiftSpecial: {
            if (itemmenu2.state=="")
                console.log("Italica desactivada")
            else
                console.log("Italica activada")
        }
    }
    ItemMenu {
        id: itemmenu3
        x: -3
        y: 75
        color: "transparent"
        scale: 0.5
        itemImage: "images/menuComun/underline2.png"

        onShiftSpecial: {
            if (itemmenu3.state=="")
                console.log("Subrayada desactivada")
            else
                console.log("Subrayada activada")
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
                target: itemmenu1
            }

            PropertyChanges {
                target: itemmenu2
            }

            PropertyChanges {
                target: itemmenu3
            }





        }
    ]

}


