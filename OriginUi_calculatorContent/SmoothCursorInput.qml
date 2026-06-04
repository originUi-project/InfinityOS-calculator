import QtQuick
import Qt5Compat.GraphicalEffects

TextInput {
    id: root

    cursorVisible: false

    cursorDelegate: Item {
        width: 0
        height: 0
        visible: false
    }

    Item {
        id: smoothCursor
        property int emptyInset: 3
        property int endGap: 8
        property int glowPadding: 14
        property int barWidth: 3
        property int barHeight: root.font.pixelSize - 2
        property rect cursorRect: root.positionToRectangle(root.cursorPosition)
        property real targetX: root.text.length === 0 ? emptyInset : cursorRect.x + endGap
        width: glowPadding * 2 + barWidth
        height: glowPadding * 2 + barHeight
        x: targetX - glowPadding - barWidth / 2
        y: cursorRect.y + (cursorRect.height - barHeight) / 2 - glowPadding
        opacity: 1
        visible: root.activeFocus

        Behavior on x {
            NumberAnimation {
                duration: 220
                easing.type: Easing.OutQuart
            }
        }

        Behavior on y {
            NumberAnimation {
                duration: 220
                easing.type: Easing.OutQuart
            }
        }

        Glow {
            anchors.fill: cursorBar
            radius: 12
            samples: 25
            spread: 0.35
            color: "#007aff"
            source: cursorBar
            transparentBorder: true
        }

        Glow {
            anchors.fill: cursorBar
            radius: 5
            samples: 13
            spread: 0.55
            color: "#66b6ff"
            source: cursorBar
            transparentBorder: true
        }

        Rectangle {
            id: cursorBar
            x: smoothCursor.glowPadding
            y: smoothCursor.glowPadding
            width: smoothCursor.barWidth
            height: smoothCursor.barHeight
            radius: 2
            color: "#007aff"
            opacity: 0.95
        }

        SequentialAnimation on opacity {
            loops: Animation.Infinite
            PauseAnimation { duration: 420 }
            NumberAnimation { to: 0.18; duration: 120; easing.type: Easing.InOutQuad }
            PauseAnimation { duration: 280 }
            NumberAnimation { to: 1; duration: 120; easing.type: Easing.InOutQuad }
        }
    }
}
