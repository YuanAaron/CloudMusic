import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: window
    width: 1317
    height: 933
    visible: true
    title: qsTr("Hello World")
    //设置无边框属性
    flags: Qt.FramelessWindowHint |
           Qt.Window |
           Qt.WindowSystemMenuHint |
           Qt.WindowMaximizeButtonHint |
           Qt.WindowMinimizeButtonHint

    //窗口拖动
    //这个MouseArea需要放到最前面，否则后面的最小化、最大化、关闭的MouseArea都不会生效（TODO 目前没有那么理解）
    MouseArea {
        anchors.fill: parent
        property point clickPos: "0,0" //int real string var point ListModel...
        onPressed: { //还可以写成 onPressed: function(mouse)
            clickPos = Qt.point(mouse.x, mouse.y)
            //console.log(clickPos)
        }
        onPositionChanged: {
            let delta = Qt.point(mouse.x - clickPos.x, mouse.y - clickPos.y)
            window.x += delta.x
            window.y += delta.y
        }
    }
}
