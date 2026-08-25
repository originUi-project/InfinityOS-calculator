import QtQuick
import infinityOS_calculator

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "Calculator"

    Calculator {
        id: mainScreen

        anchors.centerIn: parent
    }

}

