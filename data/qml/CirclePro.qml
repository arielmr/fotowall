import QtQuick 1.0

Rectangle {
    id: rectangle1
    width: 180
    height: 230
    color: "#00000000"
    clip: false
    Component.onCompleted:state = "stateHit"
//    MouseArea {
//        anchors.fill: parent
//        onClicked: {
//            Qt.quit();
//        }
//    }


    Image {
                id: image2
                x: 21
                y: 40
                width: 178
                height: 155
                fillMode: Image.PreserveAspectFit
                source: "images/CircleM2.png"

        }


        MouseArea{
            x: 21
            y: 12
            width: 90
            height: 209
            anchors.rightMargin: 69
            anchors.bottomMargin: 139
            anchors.leftMargin: 21
            anchors.topMargin: 12
            anchors.fill: parent
            onPressed: parent.state = "stateHit"
            //onReleased: parent.state = ""
        }

        Image {
            id: image1
            x: 81
            y: 85
            width: 58
            height: 65
            fillMode: Image.PreserveAspectFit
            source: "images/circleClose1.png"
        }

        Image {
            id: image3
            x: 50
            y: 59
            width: 120
            height: 116
            fillMode: Image.PreserveAspectFit
            source: "images/CircleS1.png"
        }

        Image {
            id: image4
            x: 0
            y: 0
            width: 222
            height: 234
            fillMode: Image.PreserveAspectFit
            source: "images/CircleB1.png"
        }

        states: [
            State {
                name: "stateHit"

                PropertyChanges {
                    target: hit
                    opacity: 1
                }


                PropertyChanges {
                    target: image4
                    opacity: 1
                    rotation: 360
                }

                PropertyChanges {
                    target: image2
                    opacity: 1
                    rotation: 1080
                }
                PropertyChanges {
                    target: image3
                    opacity: 1
                    rotation: 720



                }

                PropertyChanges {
                    target: rectangle1
                    height: 230
                }
            }
        ]

        transitions: [
            Transition {
                NumberAnimation {
                    property: "opacity";
                    duration: 2000
                }

                RotationAnimation {
                    property: "rotation";
                    duration:  4000
                    direction: RotationAnimation.Clockwise
                    loops: Animation.Infinite
                }

//                RotationAnimation {
//                    property: "rotationco";
//                    duration:  2000
//                    direction: RotationAnimation.Counterclockwise
//                    loops: Animation.Infinite
//                }

            }
        ]

}


