import QtQuick
import QtQuick.Effects

Rectangle {
    id: root
    width: 70
    height: 70
    color: "#f7f7f7"
    radius: 50
    border.color: "#aaaaaa"
    border.width: 1

    property string label: ""
    property color textColor: "#222222"

    signal clicked()

    layer.enabled: true
    layer.effect: MultiEffect {
            shadowEnabled: true
            shadowBlur: 0.1
            shadowColor: "#cccccc"
            shadowHorizontalOffset: 0
            shadowVerticalOffset: 3
    }
    Text {
        anchors.centerIn: parent
        color: textColor
        text: label
        font.pixelSize: 30
        font.styleName: "ExtraBold"
        font.family: "Inter"
    }

    SequentialAnimation {
        id: bounceAnim
        NumberAnimation { target: root; property: "scale"; to: 0.85; duration: 80; easing.type: Easing.InQuad }
        NumberAnimation { target: root; property: "scale"; to: 1.1;  duration: 120; easing.type: Easing.OutQuad }
        NumberAnimation { target: root; property: "scale"; to: 1.0;  duration: 80; easing.type: Easing.InOutQuad }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            bounceAnim.start()
            root.clicked()
        }
    }
}
