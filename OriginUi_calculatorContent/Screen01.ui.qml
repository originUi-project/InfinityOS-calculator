import QtQuick
import QtQuick.Controls
import QtQuick.Effects
import OriginUi_calculator
import QtQuick.Studio.DesignEffects
import Qt5Compat.GraphicalEffects

Rectangle {
    id: rectangle
    width: Screen.width / 4.5
    height: Screen.height / 2.25
    color: "#ffffff"
    property alias inputField: inputField
    property alias resultText: resultText
    property alias btn0: btn0
    property alias btn1: btn1
    property alias btn2: btn2
    property alias btn3: btn3
    property alias btn4: btn4
    property alias btn5: btn5
    property alias btn6: btn6
    property alias btn7: btn7
    property alias btn8: btn8
    property alias btn9: btn9
    property alias btnEquals: btnEquals
    property alias btnAdd: btnAdd
    property alias btnMinus: btnMinus
    property alias btnMultiply: btnMultiply
    property alias btnDivide: btnDivide
    property alias btnClear: btnClear

    SmoothCursorInput {
        id: inputField
        x: 15
        y: 10
        width: 230
        height: 40
        focus: true
        font.pixelSize: 24
        font.family: "Inter"
        color: "#222222"
    }

    AnimatedResultText {
        id: resultText
        x: 15
        font.pixelSize: 16
        font.family: "Inter"
        color: "#aaaaaa"
    }

    ClearButton {
        id: btnClear
        x: 289
        y: 46
    }
    Column {
        x: 15
        y: 111
        spacing: 10

        Row {
            spacing: 10
            CalculatorButton {id: btn1; label: "1" }
            CalculatorButton {id: btn2; label: "2" }
            CalculatorButton {id: btn3; label: "3" }
            CalculatorButton {id: btnAdd; label: "+"}
        }
        Row {
            spacing: 10
            CalculatorButton {id: btn4; label: "4" }
            CalculatorButton {id: btn5; label: "5" }
            CalculatorButton {id: btn6; label: "6" }
            CalculatorButton {id: btnMinus; label: "-"}
        }
        Row {
            spacing: 10
            CalculatorButton {id: btn7; label: "7" }
            CalculatorButton {id: btn8; label: "8" }
            CalculatorButton {id: btn9; label: "9" }
            CalculatorButton {id: btnMultiply; label: "x" }
        }
        Row {
            spacing: 10
            CalculatorButton {id: btn0; label: "0" }
            CalculatorButton { label: "." }

            CalculatorButton {
                id: btnEquals
                width: 70
                height: 70
                color: "#007aff"
                textColor: "#ffffff"
                border.width: 0
                label: "="
            }
            CalculatorButton { id: btnDivide; label: "÷"}
        }


    }
}
