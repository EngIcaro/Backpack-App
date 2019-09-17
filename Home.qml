import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Item {
    id: homeScreen
    height: root.height
    width: root.width
    Rectangle{
        anchors.fill: parent
        color: "transparent"
        Rectangle{
            id: recImageKg
            anchors.top: parent.top; anchors.left: parent.left
            width: parent.width; height: parent.height*0.4
            gradient: Gradient{
                //orientation: Gradient.Horizontal
                GradientStop {position: 0.0; color: "#fad0c4"}
                GradientStop {position: 1.0; color: "#ffd1ff"}
            }
            Image {
                anchors.horizontalCenter: recImageKg.horizontalCenter; anchors.verticalCenter: recImageKg.verticalCenter
                //width: parent.width*0.4; height: parent.height*0.6
                //fillMode: Image.PreserveAspectFit
                source: "Icon/backpack3.png"
            }
        }

        Rectangle{
            id: recCalc
            anchors.top: recImageKg.bottom; anchors.bottom: parent.bottom
            width: parent.width; height: parent.height
            color: "#f5f5f5"
            Column{
                anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter
                spacing: parent.height*0.1
                TextField{
                    id: fieldKg
                    placeholderText: "Peso Corporal em KG"
                    horizontalAlignment: TextInput.AlignHCenter
                    font.family: "Roboto"
                    width: recCalc.width*0.8
                    font.pixelSize: recCalc.height*0.06
                    font.bold: true
                    onPressed: {
                        fieldKg.text = ""
                        fieldKg.color = "black"
                    }
                }
                Button{
                    width: recCalc.width*0.8
                    height: recCalc.height*0.15
                    contentItem: Label{
                        text: "Calcular"
                        font.family: "Roboto"
                        font.pixelSize: recCalc.height*0.06
                        color: "white"
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                    }
                    Material.background: "#fab6fa"
                    onClicked: {
                        var auxKg = parseFloat(fieldKg.text)
                        labelKg.text = auxKg*0.1 + " KG"
                        fieldKg.echoMode= TextInput.Normal
                        fieldKg.text = "Peso Corporal em KG"
                        fieldKg.color = "#999999"
                    }
                }
            }
        }

        Rectangle{
            width: parent.width*0.75; height: parent.height*0.15
            color: "white"
            anchors.verticalCenter: recImageKg.bottom
            anchors.horizontalCenter: recImageKg.horizontalCenter
            radius: parent.width*0.05
            Label{
                id: labelKg
                anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter
                text: "0.00 KG"
                font.family: "Roboto"
                font.pixelSize: recCalc.height*0.1
                color: "black"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
        }
    }
}
