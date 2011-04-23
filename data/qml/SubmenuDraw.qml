import QtQuick 1.0

Rectangle {
    id: rectangle1
    width: 450
    height: 300
    color: "#00000000"
    opacity: 1
    visible: false
    signal sDrawFreehand()
    signal sDrawRectangle()
    signal sDrawEllipse()
    signal sDrawTriangle()
    signal sDrawArrow()
    signal sDrawCustomShape()


SubAngulo {
        id: smFreehand
        x: -595
        y: 122
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Freehand"
        onClic: {
            //console.log("SubMenu Freehand clicked!")
            parent.state = "drawAbierto"
            parent.sDrawFreehand()
        }
    }
SubAngulo {
        id: smRectangle
        x: -595
        y: 120
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Rectangle"
        onClic: {
            //console.log("SubMenu Rectangle clicked!")
            parent.state = "drawAbierto"
            parent.sDrawRectangle()
        }
    }
SubAngulo {
        id: smEllipse
        x: -595
        y: 120
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Ellipse"
        onClic: {
            //console.log("SubMenu Ellipse clicked!")
            parent.state = "drawAbierto"
            parent.sDrawEllipse()
        }
    }
SubAngulo {
        id: smTriangle
        x: -595
        y: 120
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Triangle"
        onClic: {
            //console.log("SubMenu Triangle clicked!")
            parent.state = "drawAbierto"
            parent.sDrawTriangle()
        }
    }
SubAngulo {
        id: smArrow
        x: -595
        y: 120
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Arrow"
        onClic: {
            //console.log("SubMenu Arrow clicked!")
            parent.state = "drawAbierto"
            parent.sDrawArrow()
        }
    }
SubAngulo {
        id: smCustomShape
        x: -595
        y: 120
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Custom"
        onClic: {
            //console.log("SubMenu CustomShape clicked!")
            parent.state = "drawAbierto"
            parent.sDrawCustomShape()
        }
    }




    states: [
        State {
            name: "drawAbierto"

            PropertyChanges {
                target: smFreehand
                x: -594
                y: 118
                opacity: 1
                rotation: 30
                visible: true
            }

            PropertyChanges {
                target: smRectangle
                x: -595
                y: 115
                opacity: 1
                rotation: 15
                visible: true
            }
            PropertyChanges {
                target: smEllipse
                x: -595
                y: 113
                opacity: 1
                rotation: 0
                visible: true
            }
            PropertyChanges {
                target: smTriangle
                x: -596
                y: 111
                opacity: 1
                rotation: -15
                visible: true
            }
            PropertyChanges {
                target: smArrow
                x: -596
                y: 109
                opacity: 1
                rotation: -30
                visible: true
            }
            PropertyChanges {
                target: smCustomShape
                x: -598
                y: 107
                opacity: 1
                rotation: -45
                visible: true
            }

            PropertyChanges {
                target: rectangle1
                height: 550
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
