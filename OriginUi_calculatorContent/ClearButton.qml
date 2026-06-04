import QtQuick
import Qt5Compat.GraphicalEffects

Item {
    id: root
    width: 25
    height: 25

    signal clicked()

    Image {
        id: clearImage
        source: "../../Downloads/backspace_24dp_1F1F1F_FILL0_wght400_GRAD0_opsz24.svg"
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        sourceSize.width: width
        sourceSize.height: height
        visible: false
    }

    ColorOverlay {
        anchors.fill: clearImage
        source: clearImage
        color: "#555555"
    }
    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
