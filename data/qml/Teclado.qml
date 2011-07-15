import QtQuick 1.0

Rectangle {
    id:keyboard
    width: 660
    height: 230
    color: "#80000000"
    smooth: true
    signal keyboardLetter(string letter)
    function myMethod() {
             keyboard.keyboardLetter("Button was clicked!")
         }
    BorderImage {
        anchors {
            fill: keyboard// border.visible ? border : placeHolder
            leftMargin: -6; topMargin: -6; rightMargin: -8; bottomMargin: -8
        }
        source: 'images/box-shadow.png'; smooth: true
        border.left: 10; border.top: 10; border.right: 10; border.bottom: 10
    }
    Key {
        id: key1
        x: -17
        y: -15
        keyLabel: "Q"
        scale: 0.5
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("q")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }
    Key{
        id: key6
        x: 33
        y: -15
        keyLabel: "W"
        scale: 0.5
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("w")
            else
                keyboard.keyboardLetter(keyLabel)
        }

    }
    Key{
        id: key7
        x: 83
        y: -15
        keyLabel: "E"
        scale: 0.5
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("e")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }
    Key{
        id: key8
        x: 133
        y: -15
        keyLabel: "R"
        scale: 0.5
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("r")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }
    Key {
        id: key11
        x: 283
        y: -15
        keyLabel: "U"
        scale: 0.5
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("u")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key9
        x: 183
        y: -15
        keyLabel: "T"
        scale: 0.5
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("t")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key10
        x: 233
        y: -15
        scale: 0.5
        keyLabel: "Y"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("y")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key3
        x: 333
        y: -15
        scale: 0.5
        keyLabel: "I"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("i")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key12
        x: 383
        y: -15
        scale: 0.5
        keyLabel: "O"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("o")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key13
        x: 433
        y: -15
        scale: 0.5
        keyLabel: "P"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("p")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }



    Key {
        id: key14
        x: 8
        y: 35
        width: 100
        scale: 0.5
        keyLabel: "A"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("a")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        x: 408
        y: 35
        scale: 0.5
        keyLabel: "L"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("l")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        x: 458
        y: 35
        scale: 0.5
        keyLabel: ";"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter(";")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key4
        x: 358
        y: 35
        scale: 0.5;
        keyLabel: "K"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("k")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key17
        x: 158
        y: 35
        scale: 0.5
        keyLabel: "F"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("f")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key15
        x: 58
        y: 35
        scale: 0.5
        keyLabel: "S"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("s")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key16
        x: 108
        y: 35
        scale: 0.5
        keyLabel: "D"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("d")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key19
        x: 258
        y: 35
        scale: 0.5
        keyLabel: "H"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("h")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key18
        x: 208
        y: 35
        scale: 0.5
        keyLabel: "G"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("g")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key20
        x: 308
        y: 35
        scale: 0.5
        keyLabel: "J"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("j")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key28
        x: 433
        y: 85
        scale: 0.5
        keyLabel: "."
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter(".")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key29
        x: 483
        y: 85
        scale: 0.5
        keyLabel: "/"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("/")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key5
        x: 383
        y: 85
        scale: 0.5
        keyLabel: ","
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter(",")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key22
        x: 183
        y: 85
        scale: 0.5
        keyLabel: "V"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("v")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key27
        x: 83
        y: 85
        scale: 0.5
        keyLabel: "X"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("x")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key21
        x: 133
        y: 85
        scale: 0.5
        keyLabel: "C"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("c")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }

    Key {
        id: key24
        x: 283
        y: 85
        scale: 0.5
        keyLabel: "N"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("n")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }
    Key {
        id: key23
        x: 233
        y: 85
        scale: 0.5
        keyLabel: "B"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("b")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }
    Key {
        id: key25
        x: 333
        y: 85
        scale: 0.5
        keyLabel: "M"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("m")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }
    Key {
        id: key26
        x: 33
        y: 85
        smooth: true
        scale: 0.5
        keyLabel: "Z"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                keyboard.keyboardLetter("z")
            else
                keyboard.keyboardLetter(keyLabel)
        }
    }
    SpaceKey {
        id: spacekey1
        x: 158
        y: 174
        width: 350
        height: 40
        onClick: {
//            keyboard.keyboardLetter("ESPACIO")
            parent.keyboardLetter(" ")
        }
    }
    ChangeKeyboard {
        id: changekeyboard1
        x: 43
        y: 174
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
        x: 54
        y: 184
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
        x: 541
        y: 65
        onShiftSpecial: {
            parent.keyboardLetter("INTRO");
        }
    }

    BackSpace {
        id: backspace1
        x: 509
        y: 15
        width: 147
        height: 40
        onShiftSpecial: {
            parent.keyboardLetter("BACKSPACE");
        }
    }

    CapsKey {
        id: capskey1
        x: 567
        y: 115
        onShiftSpecial: {
//            if (capskey1.state=="")
//                keyboard.keyboardLetter("CAPS LOCK")
//            else
//                keyboard.keyboardLetter("caps lock")
        }
    }
    states: [
        State {
            name: "numeric"
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

            PropertyChanges {
                target: capskey1
                visible: false
            }









        }
    ]

}


