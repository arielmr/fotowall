import QtQuick 1.0
import Qt.labs.toucharea 1.0


Rectangle {
    id: circleContainer
    width: 222
    height: 234
    color: "#00000000"
    clip: false
    signal triggered()
    Component.onCompleted:state = "stateHit"
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
        anchors.fill: parent
        onClicked: {
            parent.state = "stateHit"
            circleContainer.triggered()
        }
        TouchArea {
            id:touchArea
//            x: -2
//            y: 46
            x: -8
            y: -27
            width: 275
            height: 313
            anchors.bottomMargin: -52
            anchors.rightMargin: -45
            anchors.topMargin: -27
            anchors.leftMargin: -8
            anchors.fill: parent
            // We are not accepting events if there are more than 2 touch points.
            minimumTouches: 1
            maximumTouches: 10

            touchPoints: [
                TouchPoint {
                    id: tp1
                }
            ]
            onTouchStart: {
                circleContainer.triggered()
            }
        }
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
                    duration:  8000
                    direction: RotationAnimation.Clockwise
                    loops: Animation.Infinite
                }
            }
        ]
}


