import QtQuick 1.0

Rectangle {
    id: rectangle1
    width: 450
    height: 300
    color: "transparent"
    signal sReviewAlignCards()
    signal sReviewGoBack()
    signal sReviewGoToCard()
    signal sReviewShowBrick()



SubAngulo {
        id: smAlignCards
        x: -595
        y: 122
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Align Cards"
        onClic: {
            console.log("SubMenu AlignCards clicked!")
            parent.state = "navigationAbierto"
            parent.sReviewAlignCards()
        }
    }

SubAngulo {
        id: smGoBack
        x: -595
        y: 120
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Go Back"
        onClic: {
            console.log("SubMenu GoBack clicked!")
            parent.state = "navigationAbierto"
            parent.sReviewGoBack()
        }
    }

SubAngulo {
        id: smGoToCard
        x: -595
        y: 120
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Go to root"
        onClic: {
            console.log("SubMenu GoToCard clicked!")
            parent.state = "navigationAbierto"
            parent.sReviewGoToCard()
        }
    }


SubAngulo {
        id: smShowBrick
        x: -595
        y: 120
        opacity: 0.3
        visible: false
        labelScale: 0.8
        transformOrigin: Item.Right
        scale: 0.4
        rotation: 45
        label: "Show Brick"
        onClic: {
            console.log("SubMenu ShowBrick clicked!")
            parent.state = "navigationAbierto"
            parent.sReviewShowBrick()
        }
    }


    states: [
        State {
            name: "navigationAbierto"

            PropertyChanges {
                target: smAlignCards
                x: -594
                y: 118
                opacity: 1
                rotation: 30
                visible: true
            }

            PropertyChanges {
                target: smGoBack
                x: -595
                y: 112
                opacity: 1
                rotation: 0
                visible: true
            }

            PropertyChanges {
                target: smGoToCard
                x: -595
                y: 115
                opacity: 1
                rotation: 15
                visible: true
            }


            PropertyChanges {
                target: smShowBrick
                x: -595
                y: 110
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
