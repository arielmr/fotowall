import QtQuick 1.0

Rectangle {
    id:keyboard
    width: 800
    height: 300
    color: "#000000"

    signal keyboardLetter(string letter)

    function myMethod() {
             console.log("Button was clicked!")
         }

    Key {
        id: key1
        x: 36
        y: 31
        keyLabel: "Q"
        scale: 0.5
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("q")
            else
                console.log(keyLabel)
        }
    }
    Key{
        id: key6
        x: 86
        y: 31
        keyLabel: "W"
        scale: 0.5
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("w")
            else
                console.log(keyLabel)
        }

    }
    Key{
        id: key7
        x: 136
        y: 31
        keyLabel: "E"
        scale: 0.5
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("e")
            else
                console.log(keyLabel)
        }

    }
    Key{
        id: key8
        x: 186
        y: 31
        keyLabel: "R"
        scale: 0.5
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("r")
            else
                console.log(keyLabel)
        }
    }
    Key {
        id: key11
        x: 336
        y: 31
        keyLabel: "U"
        scale: 0.5
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("u")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key9
        x: 236
        y: 31
        keyLabel: "T"
        scale: 0.5
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("t")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key10
        x: 286
        y: 31
        scale: 0.5
        keyLabel: "Y"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("y")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key3
        x: 386
        y: 31
        scale: 0.5
        keyLabel: "I"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("i")
            els
                console.log(keyLabel)
        }
    }

    Key {
        id: key12
        x: 436
        y: 31
        scale: 0.5
        keyLabel: "O"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("o")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key13
        x: 486
        y: 31
        scale: 0.5
        keyLabel: "P"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("p")
            else
                console.log(keyLabel)
        }
    }



    Key {
        id: key14
        x: 61
        y: 81
        width: 100
        scale: 0.5
        keyLabel: "A"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("a")
            else
                console.log(keyLabel)
        }
    }

    Key {
        x: 461
        y: 81
        scale: 0.5
        keyLabel: "L"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("l")
            else
                console.log(keyLabel)
        }
    }

    Key {
        x: 511
        y: 81
        scale: 0.5
        keyLabel: ";"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log(";")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key4
        x: 411
        y: 81
        scale: 0.5;
        keyLabel: "K"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("k")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key17
        x: 211
        y: 81
        scale: 0.5
        keyLabel: "F"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("f")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key15
        x: 111
        y: 81
        scale: 0.5
        keyLabel: "S"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("s")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key16
        x: 161
        y: 81
        scale: 0.5
        keyLabel: "D"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("d")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key19
        x: 311
        y: 81
        scale: 0.5
        keyLabel: "H"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("h")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key18
        x: 261
        y: 81
        scale: 0.5
        keyLabel: "G"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("g")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key20
        x: 361
        y: 81
        scale: 0.5
        keyLabel: "J"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("j")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key28
        x: 486
        y: 131
        scale: 0.5
        keyLabel: "."
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log(".")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key29
        x: 536
        y: 131
        scale: 0.5
        keyLabel: "/"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("/")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key5
        x: 436
        y: 131
        scale: 0.5
        keyLabel: ","
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log(",")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key22
        x: 236
        y: 131
        scale: 0.5
        keyLabel: "V"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("v")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key27
        x: 136
        y: 131
        scale: 0.5
        keyLabel: "X"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("x")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key21
        x: 186
        y: 131
        scale: 0.5
        keyLabel: "C"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("c")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key24
        x: 336
        y: 131
        scale: 0.5
        keyLabel: "N"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("n")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key23
        x: 286
        y: 131
        scale: 0.5
        keyLabel: "B"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("b")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key25
        x: 386
        y: 131
        scale: 0.5
        keyLabel: "M"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("m")
            else
                console.log(keyLabel)
        }
    }

    Key {
        id: key26
        x: 86
        y: 131
        scale: 0.5
        keyLabel: "Z"
        onClicked: {
            if (capskey1.state=="" && keyboard.state =="")
                console.log("z")
            else
                console.log(keyLabel)
        }
    }

    SpaceKey {
        id: spacekey1
        x: 211
        y: 220
        width: 350
        height: 40
        onClick: {
            console.log("ESPACIO")
            parent.keyboardLetter(" ")
        }
    }

    ChangeKeyboard {
        id: changekeyboard1
        x: 96
        y: 220
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
        y: 230
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
        y: 111
    }

    BackSpace {
        id: backspace1
        x: 568
        y: 61
        width: 136
        height: 40
    }

    CapsKey {
        id: capskey1
        x: 620
        y: 161
        onShiftSpecial: {
//            capskey1.state==""?console.log("CAPS"):console.log("caps")
            if (capskey1.state=="")
                console.log("CAPS LOCK")
            else
                console.log("caps lock")
        }
    }

    Exit {
        id: exit1
        x: 604
        y: 5

        onShiftSpecial:{
                parent.state = "invisible"
        }

    }




    states: [
        State {
            name: "numeric"

//            PropertyChanges {
//                target: key2
//                keyLabel: "1"
//            }

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

            PropertyChanges {
                target: capskey1
                visible: false
            }

            PropertyChanges {
                target: keyboard
                visible: true
            }





        },
        State {
            name: "invisible"
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
                x: "86"
                y: "75"
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
                visible: "false"
            }

            PropertyChanges {
                target: keyboard
                visible: false
            }
        }
    ]

}


