import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    id: root
    visible: true
    width: 500
    height: 720
    title: qsTr("backpack")
    FontLoader { id: fixedFont; name: "Roboto" }
    StackView {
        id: stackView
        initialItem: loginComponent
        anchors.fill: parent
        Component{
            id: loginComponent
            Login{}
        }
        Component{
            id: homeComponent
            Home{}
        }
    }
}
