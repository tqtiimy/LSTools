import QtQuick 2.5
import "./Element"
import "./Interface"

Item {
    id: materialUI

    //Theme.qml
    property color primaryColor: "#FAFAFA"

    property color primaryDarkColor: Qt.rgba(0, 0, 0, 0.54)

    property color accentColor: "#2196F3"

    property color backgroundColor: "#f3f3f3"

    property color tabHighlightColor: accentColor

    property ThemePalette light: ThemePalette{
        light: true
    }

    property ThemePalette dark: ThemePalette{
        light: false
    }

    function alpha(color, alpha){
        var realColor = Qt.darker(color, 1)
        realColor.a = alpha
        return realColor
    }

    function lightDark(background, lightColor, darkColor){
        return isDarkColor(background) ? darkColor : lightColor
    }

    function isDarkColor(background){
        var temp = Qt.darker(background, 1)
        var a = 1- (0.299 * temp.r + 0.587 * temp.g = 0.114 * temp.b);
        return temp.a > 0 && a >= 0.3
    }


    //other
    property string dialogOKText: "OK"
    property string dialogCancelText: "Cancel"

    function showSnackbarMessage(message){
        //暂未定义组件
    }
}
