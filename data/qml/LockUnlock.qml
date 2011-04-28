import QtQuick 1.0

Rectangle {
    id: keyboardKey
    width: 100
    height: 100
    color: "#0c0c0c00"

    property alias itemImage: image1.source

    signal clicked()
    signal shiftSpecial()

    MouseArea{
        anchors.fill: parent
//        onPressed: {
//            parent.state = "selectedItem"
//        }
//        onReleased:{
//            parent.state = ""
//        }
//        onClicked: {
//            parent.clicked()
//        }


        onClicked: {
            if (parent.state == "selectedItem"){
                parent.state = ""
                parent.shiftSpecial()
            }
            else{
                parent.state = "selectedItem"
                parent.shiftSpecial()
            }
//            parent.shiftSpecial()
        }


    }
    Image {
        id: itemMenu
        x: 0
        y: 0
        width: 100
        height: 100
        opacity: 0.0
        source: "images/menuComun/digital-fingerprintgreen.png"
        Behavior on opacity{
            NumberAnimation{
                duration: 800
                easing.type: Easing.OutExpo
            }
        }
    }


    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 100
        height: 100
        color: "#00000000"
        radius: 16

        Image {
            id: image1
            x: 0
            y: 0
            width: 100
            height: 100
            source: "images/menuComun/unlock.png"
        }
    }

    states: [
        State {
            name: "selectedItem"

            PropertyChanges {
                target: rectangle1
                color: "#001c2b0e"
                radius: 24
                border.width: 0
                border.color: "#000000"
            }

            PropertyChanges {
                target: image1
                source: "images/menuComun/lock.png"
            }

//            PropertyChanges {
//                target: hit
//                //opacity: 1
//            }
        }
    ]


}
