import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4


ApplicationWindow {
    visible: true
    width: 1000; height: 800
    color: "lightsteelblue"



    menuBar: MenuBar {
        id: menu


        Menu {
            id: file
            title: "File"

            MenuItem { text:"Open"; }
            MenuItem { text: "Close"}
            MenuItem { text: "Exit"; onTriggered: Qt.quit() }
        }

        Menu {
            title: "Edit"
            MenuItem { text: "Cut" }
            MenuItem { text: "Copy" }
            MenuItem { text: "Paste" }
        }


        Menu {
            id: view
            title: "View"
        }

        Menu {
            id: help
            title: "Help"
            MenuItem { text: "Help"}
            MenuItem { text: "About"}
        }


    }



    /*    ApplicationWindow {
//        id: inputDataWindow
//        title: "Input Data Window"
//        width: 300; height: 400;
//        color: "orange"

//        menuBar: MenuBar {
//            Menu {title: "Print" ; MenuItem { text: "Print";      } }

//        }

//        Text {
//            anchors.top: parent.top
//            anchors.horizontalCenter: parent.horizontalCenter
//            text: qsTr("Enter the data")
//        }

//        Text {
//            id: inputi
//            text: qsTr("Enter some value")
//            anchors.top: parent.top
//            anchors.topMargin: 20
//            anchors.left: parent.left
//        }

//        Text {
//            id: inputi1
//            text: qsTr("Enter some value")
//            anchors.top: inputi.bottom
//            anchors.topMargin: 10
//            anchors.left: parent.left
//        }

//        Text {
//            id: inputi2
//            text: qsTr("Enter some value")
//            anchors.top: inputi1.bottom
//            anchors.topMargin: 10
//            anchors.left: parent.left
//        }

//        Text {
//            id: inputi3
//            text: qsTr("Enter some value")
//            anchors.top: inputi2.bottom
//            anchors.topMargin: 10
//            anchors.left: parent.left
//        }

//        TextField {
//            id: inputfield
//            anchors.left: inputi.right
//            anchors.right: parent.right
//            anchors.verticalCenter: inputi.verticalCenter
//            anchors.leftMargin: 10
//        }
//        TextField {
//            id: inputfield1
//            anchors.left: inputi1.right
//            anchors.right: parent.right
//            anchors.verticalCenter: inputi1.verticalCenter
//            anchors.leftMargin: 10
//        }
//        TextField {
//            id: inputfield2
//            anchors.left: inputi2.right
//            anchors.right: parent.right
//            anchors.verticalCenter: inputi2.verticalCenter
//            anchors.leftMargin: 10
//        }
//        TextField {
//            id: inputfield3
//            anchors.left: inputi3.right
//            anchors.right: parent.right
//            anchors.verticalCenter: inputi3.verticalCenter
//            anchors.leftMargin: 10
//        }


//        Button {
//            id: pullaz
//            width: 150; height: 50
//            text: "OK"
//            anchors.right: parent.right
//            anchors.bottom: parent.bottom


//            onClicked:  {
//                inputus = inputfield.text
//                inputDataWindow.close()
//            }*/

    //        }
    //    }

    //    property var inputus: inputDataWindow.inputi

    TabView {
        id: tabs
        anchors.fill: parent
        anchors.top: menu.bottom
        anchors.topMargin: 2



        Tab {
            id: vor
            width: parent.width/5
            title: "Vorgespannt"
            anchors.top: parent.top
            anchors.topMargin: 10

            Rectangle {
                color: "white"

                //INPUTS RECTANGLE
                Rectangle {
                    id: inputsRect
                    border.width: 1
                    border.color: "black"
                    color: "white" /*#808080*/
                    width: 360; height: 410;
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 5
                    radius: 4

                    Text {
                        id: inputsRectTitle
                        text: qsTr("Eingaben")
                        font.pixelSize: 18
                        //                        anchors.left: parent.left
                        anchors.leftMargin: 10
                        anchors.horizontalCenter: parent.horizontalCenter

                    }

                    Rectangle {
                        id: inputsRectTitleUnderline
                        color: "black"
                        height: 1
                        anchors.top: inputsRectTitle.bottom
                        anchors.topMargin: 1
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.leftMargin: 10
                        anchors.rightMargin: 10

                    }


                    Text {
                        id: inputLabelBetriebskraft
                        text: qsTr("Betriebskraft Fb(N)")
                        anchors.left: parent.left
                        anchors.leftMargin: 5
                        anchors.top: inputsRectTitleUnderline.bottom
                        anchors.topMargin: 10
                        font.pixelSize: 18
                    }

                    TextField {
                        id: inputTextBetriebskraft
                        anchors.left: inputLabelBetriebskraft.right
                        anchors.leftMargin: 40
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        anchors.verticalCenter: inputLabelBetriebskraft.verticalCenter
                    }


                    Text {
                        id: inputLabelKlemmskraft
                        text: qsTr("Klemmkraft Fkl(N)")
                        anchors.left: inputLabelBetriebskraft.left
                        anchors.top: inputTextBetriebskraft.bottom
                        anchors.topMargin: 5
                        font.pixelSize: 18
                    }

                    TextField {
                        id: inputTextKlemmkraft
                        anchors.left: inputLabelBetriebskraft.right
                        anchors.leftMargin: 40
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        anchors.verticalCenter: inputLabelKlemmskraft.verticalCenter
                    }

                    Text {
                        id: inputLabelKlemmlänge
                        text: qsTr("Klemmlänge lk(mm)")
                        anchors.left: inputLabelBetriebskraft.left
                        anchors.top: inputLabelKlemmskraft.bottom
                        anchors.topMargin: 5
                        font.pixelSize: 18
                    }

                    TextField {
                        id: inputTextKlemmlänge
                        anchors.left: inputLabelBetriebskraft.right
                        anchors.leftMargin: 40
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        anchors.verticalCenter: inputLabelKlemmlänge.verticalCenter
                    }


                    Rectangle {
                        id: belastungsRect
                        height: 120;
                        color: "white" /*"#808080"*/
                        border.color: "black"
                        border.width: 1
                        anchors.top: inputLabelKlemmlänge.bottom
                        anchors.topMargin: 15
                        anchors.left: parent.left
                        //                        anchors.leftMargin: 5
                        anchors.right: parent.right
                        //                        anchors.rightMargin: 5


                        TextEdit {
                            id: belastungsText
                            text: qsTr("Belastungen")
                            anchors.top: belastungsRect.top
                            anchors.left: belastungsRect.left
                            anchors.leftMargin: 10
                            font.pixelSize: 18
                        }



                        GroupBox {
                            id: belastungsRadiobuttonsGroupbox
                            anchors.top: belastungsRect.top
                            anchors.topMargin: 20


                            ExclusiveGroup {
                                id: belastungsExclusiveGroup
                            }

                            ColumnLayout {
                                id: column


                            RadioButton {
                                text: "Statisch"
                                exclusiveGroup: belastungsExclusiveGroup
                                checked: true

                                style: RadioButtonStyle {
                                    indicator: Rectangle {
                                            implicitWidth: 16
                                            implicitHeight: 16
                                            radius: 9
                                            border.color: control.activeFocus ? "darkblue" : "gray"
                                            border.width: 1
                                            Rectangle {
                                                anchors.fill: parent
                                                visible: control.checked
                                                color: "#555"
                                                radius: 9
                                                anchors.margins: 4
                                            }
                                    }
                                }
                             }

                            RadioButton {
                                text: "Dynamisch"
                                exclusiveGroup: belastungsExclusiveGroup

                                style: RadioButtonStyle {
                                    indicator: Rectangle {
                                            implicitWidth: 16
                                            implicitHeight: 16
                                            radius: 9
                                            border.color: control.activeFocus ? "darkblue" : "gray"
                                            border.width: 1
                                            Rectangle {
                                                anchors.fill: parent
                                                visible: control.checked
                                                color: "#555"
                                                radius: 9
                                                anchors.margins: 4
                                            }
                                    }
                                }
                             }


                        }



                        }






                        GroupBox {
                            id: belastungsKraftRadiobuttons
                            anchors.top: parent.top
                            anchors.left: belastungsRadiobuttonsGroupbox.right
                            anchors.leftMargin: 10



                            ExclusiveGroup {
                                id: belastungsKraftExclusiveGroup
                            }

                            ColumnLayout {

                            RadioButton {
                                id: axialkraftRadiobutton
                                text: "Axialkraft(zentrisch angreif.)"
                                exclusiveGroup: belastungsKraftExclusiveGroup
                                checked: true

                                style: RadioButtonStyle {
                                    indicator: Rectangle {
                                            implicitWidth: 16
                                            implicitHeight: 16
                                            radius: 9
                                            border.color: control.activeFocus ? "darkblue" : "gray"
                                            border.width: 1
                                            Rectangle {
                                                anchors.fill: parent
                                                visible: control.checked
                                                color: "#555"
                                                radius: 9
                                                anchors.margins: 4
                                            }
                                    }
                                }
                             }

                            RadioButton {
                                id: axialkraftRadiobuttonExzentrisch
                                text: "Axialkraft(exzentrisch angreif.)"
                                exclusiveGroup: belastungsKraftExclusiveGroup

                                style: RadioButtonStyle {
                                    indicator: Rectangle {
                                            implicitWidth: 16
                                            implicitHeight: 16
                                            radius: 9
                                            border.color: control.activeFocus ? "darkblue" : "gray"
                                            border.width: 1
                                            Rectangle {
                                                anchors.fill: parent
                                                visible: control.checked
                                                color: "#555"
                                                radius: 9
                                                anchors.margins: 4
                                            }
                                    }
                                }
                             }


                            RadioButton {
                                id: querkraft
                                text: "Querkfraft"
                                exclusiveGroup: belastungsKraftExclusiveGroup

                                style: RadioButtonStyle {
                                    indicator: Rectangle {
                                            implicitWidth: 16
                                            implicitHeight: 16
                                            radius: 9
                                            border.color: control.activeFocus ? "darkblue" : "gray"
                                            border.width: 1
                                            Rectangle {
                                                anchors.fill: parent
                                                visible: control.checked
                                                color: "#555"
                                                radius: 9
                                                anchors.margins: 4
                                            }
                                    }
                                }
                             }


                        }



                        }





                        Text {
                            id: anziehenText
                            text: qsTr("Anziehen der Schraube")
                            anchors.top: belastungsKraftRadiobuttons.bottom
                            anchors.topMargin: -1
                            anchors.leftMargin: 5
                            anchors.left: parent.left
                            font.pixelSize: 18
                        }



                        ComboBox {
                            id: anziehenComboBox
                            anchors.left: anziehenText.right
                            anchors.leftMargin: 10
                            anchors.verticalCenter: anziehenText.verticalCenter
                            anchors.right: parent.right
                            anchors.rightMargin: 5

                            model: ["Einfacher Drehschrauber", "Drehmomentschlüssel", "Winkel-Streckgrenzkontrolle"]
                        }



//                        property var name: {  if(axialkraftRadiobutton.checked){ "axial" } else if( axialkraftRadiobuttonExzentrisch.checked) { "excent."} else {"querkraft" }  }

//                        property string kraft: "value"



//                        Text {
//                            id: belastungsKraftText
//                            text: "Belastungskraft [N] "//if(axialkraftRadiobutton.checked){ "Belastung axialkraft [N]" } else if( axialkraftRadiobuttonExzentrisch.checked) { "Belastung exc. Axialkraft [N]"} else {"Belastung Querkraft" }
//                            anchors.left: parent.left
//                            anchors.leftMargin: 5
//                            anchors.top: anziehenComboBox.bottom
//                            anchors.topMargin: 10
//                            font.pixelSize: 18

//                        }

//                        TextField {
//                            id: belastungsKraftInput
//                            anchors.left: anziehenComboBox.left
//                            anchors.verticalCenter: belastungsKraftText.verticalCenter
//                            anchors.right: parent.right
//                            anchors.rightMargin: 5

//                        }



                    }
                }


            }


        }


        Tab {
            width: parent.width/5
            title: "Blue"
            Rectangle { color: "blue";

                Button {
                    id: pullas
                    width: 150; height: 50
                    text: "Input Data"
                    anchors.left: parent.left
                    anchors.top: parent.top


                    onClicked:  {
                        vor.title = inputus

                    }

                }
            }
        }
        Tab {
            width: parent.width/5
            title: "Nichtvorgespannt"
            Rectangle { color: "green" }
        }
        Tab {
            width: parent.width/5
            title: "Bewegungsschrauben"
            Rectangle { color: "blue" }
        }
        Tab {
            width: parent.width/5
            title: "Green"
            Rectangle { color: "green" }
        }

        Button {
            id: pullaa
            width: 150; height: 50
            text: "Input Data"
            anchors.right: parent.right
            anchors.top: parent.top


            onClicked:  {
                inputDataWindow.show()
            }

        }
    }






}
