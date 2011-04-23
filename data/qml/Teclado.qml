import QtQuick 1.0

Rectangle {
    id:keyboard
    width: 800
    height: 300
    color: "#000000"

    signal qKey()    

    function myMethod() {
             console.log("Button was clicked!")
         }


    Key{
        id: key2
        x: 36
        y: -25
        scale: 0.5
        keyLabel: "Q"

        Component.onCompleted: clic.connect(parent.myMethod())

        onLetterClicked: console.log("clicked")
        onClic: console.log("clicked")
//        onLetterClicked: {
//            console.log("Q clicked")
//            parent.state.qKey()
//        }


    }
    Key{
        id: key7
        x: 136
        y: -25
        scale: 0.5
        keyLabel: "E"

    }
    Key{
        id: key6
        x: 86
        y: -25
        scale: 0.5
        keyLabel: "W"
    }
    Key{ id: key8; x: 186;y: -25; keyLabel: "R";scale: 0.5}
    Key {
        id: key11
        x: 336
        y: -25
        keyLabel: "U"
        scale: 0.5
    }

    Key {
        id: key9
        x: 236
        y: -25
        scale: 0.5
        keyLabel: "T"
    }

    Key {
        id: key10
        x: 286
        y: -25
        scale: 0.5
        keyLabel: "Y"
    }

    Key {
        id: key3
        x: 386
        y: -25
        scale: 0.5
        keyLabel: "I"
    }

    Key {
        id: key12
        x: 436
        y: -25
        scale: 0.5
        keyLabel: "O"
    }

    Key {
        id: key13
        x: 486
        y: -25
        scale: 0.5
        keyLabel: "P"
    }

    Key {
        id: key1
        x: 36
        y: -25
        scale: 0.5
        keyLabel: "Q"
    }

    Key {
        id: key14
        x: 61
        y: 25
        width: 100
        scale: 0.5
        keyLabel: "A"
    }

    Key {
        x: 461
        y: 25
        scale: 0.5
        keyLabel: "L"
    }

    Key {
        x: 511
        y: 25
        scale: 0.5
        keyLabel: ";"
    }

    Key {
        id: key4
        x: 411
        y: 25
        scale: 0.5
        keyLabel: "K"
    }

    Key {
        id: key17
        x: 211
        y: 25
        scale: 0.5
        keyLabel: "F"
    }

    Key {
        id: key15
        x: 111
        y: 25
        scale: 0.5
        keyLabel: "S"
    }

    Key {
        id: key16
        x: 161
        y: 25
        scale: 0.5
        keyLabel: "D"
    }

    Key {
        id: key19
        x: 311
        y: 25
        scale: 0.5
        keyLabel: "H"
    }

    Key {
        id: key18
        x: 261
        y: 25
        scale: 0.5
        keyLabel: "G"
    }

    Key {
        id: key20
        x: 361
        y: 25
        scale: 0.5
        keyLabel: "J"
    }

    Key {
        id: key28
        x: 486
        y: 75
        scale: 0.5
        keyLabel: "."
    }

    Key {
        id: key29
        x: 536
        y: 75
        scale: 0.5
        keyLabel: "/"
    }

    Key {
        id: key5
        x: 436
        y: 75
        scale: 0.5
        keyLabel: ","
    }

    Key {
        id: key22
        x: 236
        y: 75
        scale: 0.5
        keyLabel: "V"
    }

    Key {
        id: key27
        x: 136
        y: 75
        scale: 0.5
        keyLabel: "X"
    }

    Key {
        id: key21
        x: 186
        y: 75
        scale: 0.5
        keyLabel: "C"
    }

    Key {
        id: key24
        x: 336
        y: 75
        scale: 0.5
        keyLabel: "N"
    }

    Key {
        id: key23
        x: 286
        y: 75
        scale: 0.5
        keyLabel: "B"
    }

    Key {
        id: key25
        x: 386
        y: 75
        scale: 0.5
        keyLabel: "M"
    }

    Key {
        id: key26
        x: 86
        y: 75
        scale: 0.5
        keyLabel: "Z"
    }

    SpaceKey {
        id: spacekey1
        x: 211
        y: 164
        width: 350
        height: 40
    }

    ChangeKeyboard {
        id: changekeyboard1
        x: 96
        y: 164
        scale: 1
        onShiftSpecial:{
            if (parent.state == "numeric")
                {parent.state = ""
            }


            else
                {parent.state = "numeric"
            }
        }


    }

    Text {
        id: text1
        x: 107
        y: 174
        width: 80
        height: 20
        color: "#01beaf"
        text: ".?123"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 30
    }

    IntroKey {
        id: introkey1
        x: 594
        y: 55
    }

    BackSpace {
        id: backspace1
        x: 568
        y: 5
    }

    CapsKey {
        id: capskey1
        x: 620
        y: 105
    }


    states: [
        State {
            name: "numeric"

            PropertyChanges {
                target: key2
                keyLabel: "1"
            }

            PropertyChanges {
                target: key1
                keyLabel: "1"
            }

            PropertyChanges {
                target: key6
                keyLabel: "2"
            }

            PropertyChanges {
                target: key7
                keyLabel: "3"
            }

            PropertyChanges {
                target: key8
                keyLabel: "4"
            }

            PropertyChanges {
                target: key9
                keyLabel: "5"
            }

            PropertyChanges {
                target: key10
                keyLabel: "6"
            }

            PropertyChanges {
                target: key11
                keyLabel: "7"
            }

            PropertyChanges {
                target: key3
                keyLabel: "8"
            }

            PropertyChanges {
                target: key12
                keyLabel: "9"
            }

            PropertyChanges {
                target: key13
                keyLabel: "0"
            }

            PropertyChanges {
                target: key14
                keyLabel: "-"
            }

            PropertyChanges {
                target: key15
                keyLabel: "/"
            }

            PropertyChanges {
                target: key16
                keyLabel: ":"
            }

            PropertyChanges {
                target: key17
                keyLabel: ";"
            }

            PropertyChanges {
                target: key18
                keyLabel: "("
            }

            PropertyChanges {
                target: key19
                keyLabel: ")"
            }

            PropertyChanges {
                target: key20
                keyLabel: "&"
            }

            PropertyChanges {
                target: key4
                keyLabel: "@"
            }

            PropertyChanges {
                target: key21
                keyLabel: "."
            }

            PropertyChanges {
                target: key22
                keyLabel: ","
            }

            PropertyChanges {
                target: key23
                keyLabel: "'"
            }

            PropertyChanges {
                target: key24
                keyLabel: "\""
            }

            PropertyChanges {
                target: key5
                keyLabel: " ?"
            }

            PropertyChanges {
                target: key26
                x: 86
                y: 75
                keyLabel: "<"
            }
            PropertyChanges {
                target: changekeyboard1
            }

            PropertyChanges {
                target: text1
                text: "ABC"
            }

            PropertyChanges {
                target: key25
                keyLabel: " !"
            }

            PropertyChanges {
                target: key27
                keyLabel: ">"
            }

            PropertyChanges {
                target: key28
                keyLabel: "["
            }

            PropertyChanges {
                target: key29
                keyLabel: "]"
            }





        }
    ]

}


