import QtQuick 2.7
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0
import "qrc:/MaterialUI/"
import "qrc:/MaterialUI/Interface/"

ApplicationWindow {
    id: applicationWindow
    title: "LSTools"
    width: 800
    height: 600
    visible: true
    opacity: 10
    color: "#fafafa"

    minimumWidth: 800
    minimumHeight: 600

    Rectangle{
        x: 0
        y: 0
        z: 1
        width: 180
        height: 64
    }

    RectangularGlow{
        x: 180
        z: -1
        width: parent.width - 180
        height: 64
        glowRadius: 5
        spread: 0.2
        color: "#30000000"
        cornerRadius: 3
    }

    Rectangle{
        x: 180
        z: 1
        width: parent.width - 180
        height: 64
        color: "#2196F3"

        MaterialLabel {
            id: currentItemTitleNameLabel
            x: 60
            z: 1
            height: 64
            font.pixelSize: 20
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.left
            color: "#ffffff"
        }
    }

    Item {
        id: mainPageContains
        x: 180
        y: 64
        z: -2
        width: parent.width - 180
        height: parent.height - 64

        property var pages: new Object

        function showPage(titleName, itemQrcLocation)
        {

        }

        Timer{
            id: showPageTimer
            interval: 5
            repeat: false
            running: false

            property string titleName
            property string itemQrcLocation

            onTriggered: {
                switch(itemQrcLocation)
                {
                case "":break;

                }
            }
        }
    }
}


