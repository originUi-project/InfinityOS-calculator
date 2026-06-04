import QtQuick
import OriginUi_calculator

Screen01 {
    id: form

    function appendToInput(val) {
        inputField.text += val
    }

    function calculate() {
        try {
            resultText.text = eval(inputField.text)
        } catch(e) {
            resultText.text = "Error"
        }
    }

    Component.onCompleted: {
        btn0.clicked.connect(() => appendToInput("0"))
        btn1.clicked.connect(() => appendToInput("1"))
        btn2.clicked.connect(() => appendToInput("2"))
        btn3.clicked.connect(() => appendToInput("3"))
        btn4.clicked.connect(() => appendToInput("4"))
        btn5.clicked.connect(() => appendToInput("5"))
        btn6.clicked.connect(() => appendToInput("6"))
        btn7.clicked.connect(() => appendToInput("7"))
        btn8.clicked.connect(() => appendToInput("8"))
        btn9.clicked.connect(() => appendToInput("9"))
        btnAdd.clicked.connect(() => appendToInput("+"))
        btnMinus.clicked.connect(() => appendToInput("-"))
        btnMultiply.clicked.connect(() => appendToInput("*"))
        btnDivide.clicked.connect(() => appendToInput("/"))
        btnEquals.clicked.connect(() => calculate())
        btnClear.clicked.connect(() => {
            inputField.text = ""
            resultText.text = ""
        })
    }
}
