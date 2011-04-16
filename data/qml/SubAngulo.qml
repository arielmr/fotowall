import Qt 4.7
import Qt.labs.toucharea 1.0

Item {
    width:1000
    height:255
    property alias label: label.text
    property alias labelScale: label.scale
    id: anguloMain
    signal clic()
    signal rele()
    Image {
        id: layer_1
        source: "images/layer_1.png"
        x: 0
        y: 0
        opacity: 0.0
    }
    Image {
        id: angulo
        source: "images/angulo.png"
        x: 17
        y: 1
        opacity: 1
    }
    Image {
        id: centroid
        source: "images/centroid.png"
        x: 950
        y: 102
        visible: false
        opacity: 1
    }
    Image {
        id: axis
        source: "images/axis.png"
        x: 27
        y: 126
        opacity: 0
    }
    Text {
        id: label
        text: "label"
        horizontalAlignment: Text.AlignRight
        font.pixelSize: 67
        font.family: "MyriadPro-Regular"
        color: "#ffffff"
        smooth: true
        x: 313
        y: 83
        opacity: 1
    }
    MouseArea{
        id: mousearea1
        x: -2
        y: 46
        width: 729
        height: 161
        anchors.leftMargin: -1
        anchors.topMargin: 46
        anchors.bottomMargin: 48
        anchors.rightMargin: 272
        anchors.fill: parent
        onPressed:  {
            parent.state = "State1"
            anguloMain.clic()
        }
        onReleased: {
            parent.state = ""
            anguloMain.rele()
        }
    }
    TouchArea {
        id:touchArea
        anchors.fill: parent
        // We are not accepting events if there are more than 2 touch points.
        minimumTouches: 1
        maximumTouches: 1

        touchPoints: [
            TouchPoint { id: tp1 },
            TouchPoint { id: tp2 }
        ]
        onTouchStart: {
            parent.state = "State1"
            anguloMain.clic()
        }
        onTouchEnd: {
            parent.state = ""
            anguloMain.rele()
        }
    }
    states: [
        State {
            name: "State1"
            PropertyChanges {
                target: label
                x: 285
                y: 83
            }
        }
    ]
    transitions: [
        Transition {
            NumberAnimation {
                properties: "x,y"
                duration: 500
                easing.type: Easing.OutQuart
            }
        }
    ]
}
