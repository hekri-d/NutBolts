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

            MenuItem { text:"Open";  }
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




    Window {
        id: inputDataWindow
        title: "Input Data Window"
        width: 300; height: 400;
        color: "orange"

        Text {
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("Enter the data")
        }

        Text {
            id: inputi
            text: qsTr("Enter some value")
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.left: parent.left
        }

        Text {
            id: inputi1
            text: qsTr("Enter some value")
            anchors.top: inputi.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
        }

        Text {
            id: inputi2
            text: qsTr("Enter some value")
            anchors.top: inputi1.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
        }

        Text {
            id: inputi3
            text: qsTr("Enter some value")
            anchors.top: inputi2.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
        }

        TextField {
            id: inputfield
            anchors.left: inputi.right
            anchors.right: parent.right
            anchors.verticalCenter: inputi.verticalCenter
            anchors.leftMargin: 10
        }
        TextField {
            id: inputfield1
            anchors.left: inputi1.right
            anchors.right: parent.right
            anchors.verticalCenter: inputi1.verticalCenter
            anchors.leftMargin: 10
        }
        TextField {
            id: inputfield2
            anchors.left: inputi2.right
            anchors.right: parent.right
            anchors.verticalCenter: inputi2.verticalCenter
            anchors.leftMargin: 10
        }
        TextField {
            id: inputfield3
            anchors.left: inputi3.right
            anchors.right: parent.right
            anchors.verticalCenter: inputi3.verticalCenter
            anchors.leftMargin: 10
        }


        Button {
            id: pullaz
            width: 150; height: 50
            text: "OK"
            anchors.right: parent.right
            anchors.bottom: parent.bottom


            onClicked:  {
                inputus = inputfield.text
                inputDataWindow.close()
            }

        }
    }

    property var inputus: inputDataWindow.inputi

    TabView {
        id: tabs
        anchors.fill: parent
        Tab {
            id: vor
            width: parent.width/5
            title: "Vorspannkraft"
            Rectangle { color: "brown"


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
            title: "Green"
            Rectangle { color: "green" }
        }
        Tab {
            width: parent.width/5
            title: "Blue"
            Rectangle { color: "blue" }
        }
        Tab {
            width: parent.width/5
            title: "Green"
            Rectangle { color: "green" }
        }

        Button {
            id: pullas
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
