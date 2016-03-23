import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4



ApplicationWindow {
    visible: true
    width: 600; height: 500
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
            title: "View"
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
            id: inputi
            text: qsTr("Enter some value")
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.left: parent.left
        }

        TextField {
            id: inputfield
            anchors.left: inputi.right
            anchors.right: parent.right
            anchors.verticalCenter: inputi.verticalCenter
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
            Rectangle { color: "red"


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
