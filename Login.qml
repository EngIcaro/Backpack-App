import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Item {
    id: loginScreen
    height: root.height
    width: root.width

    Timer {
        interval: 1500; running: true;
        onTriggered:{
            //stackView.replace(homeComponent, StackView.PopTransition)

        }
    }


    Rectangle{
        anchors.fill: parent
        gradient: Gradient{
            //orientation: Gradient.Horizontal
            GradientStop {position: 0.0; color: "#fad0c4"}
            GradientStop {position: 1.0; color: "#ffd1ff"}
        }
        Rectangle{
            id: recImage
            anchors.top: parent.top; anchors.topMargin: parent.height*0.2
            anchors.horizontalCenter: parent.horizontalCenter
            //anchors.left: parent.left;
            height: parent.height*0.5
            width: parent.width*0.6
            color: "transparent"
            Image {
                id: unitImg
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                source: "Icon/unit.png"
            }
        }
    }
}
