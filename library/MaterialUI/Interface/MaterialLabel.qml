import QtQuick 2.5
import QtQuick.Controls 1.4

Label {
    id: label
    property string style: "body1"

    property var fontStyle: {
        "body1": {
            "size": 14,
            "font": "regular"
        },
    }

    property var fontInfo: fontStyle[style]

    renderType: Text.QtRendering

    font.pixelSize: fontInfo.size

    font.family: {
        switch (Qt.platform.os)
        {
            case "windows": return "微软雅黑";
            default: return "Roboto"
        }
    }

    color: "#d8000000"
}
