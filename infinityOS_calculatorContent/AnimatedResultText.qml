import QtQuick

Text {
    id: root

    property real resultOffset: 0

    y: 48 + resultOffset
    opacity: 0

    onTextChanged: {
        if (text.length === 0) {
            resultEntryAnimation.stop()
            opacity = 0
            resultOffset = 0
            return
        }

        opacity = 0
        resultOffset = 8
        resultEntryAnimation.restart()
    }

    ParallelAnimation {
        id: resultEntryAnimation

        NumberAnimation {
            target: root
            property: "opacity"
            from: 0
            to: 1
            duration: 180
            easing.type: Easing.OutCubic
        }

        NumberAnimation {
            target: root
            property: "resultOffset"
            from: 8
            to: 0
            duration: 220
            easing.type: Easing.OutQuart
        }
    }
}
