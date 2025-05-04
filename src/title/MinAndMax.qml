import QtQuick 2.15
import QtGraphicalEffects 1.15 //鼠标悬浮时图片颜色变化

//窗口最大化、最小化及关闭
Row { //行布局
    id: minmaxRow
    spacing: 15
    anchors.verticalCenter: parent.verticalCenter
    anchors.right: parent.right
    anchors.rightMargin: 0.02 * window.width

    //投屏
    Image {
        id: castScreenImg
        anchors.verticalCenter: parent.verticalCenter
        //source: "/img/resources/title/castscreen.png" //注意：使用copy pathu需要去掉:
        source: "qrc:/img/resources/title/castscreen.png"

        //鼠标悬浮时图片颜色变化
        layer.enabled: false
        layer.effect: ColorOverlay {
            source: castScreenImg
            color: "white"
        }
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {
                castScreenImg.layer.enabled = true
            }
            onExited: {
                castScreenImg.layer.enabled = false
            }
            onClicked: {
                //...
            }
        }
    }

    //最小化
    Rectangle {
        id: miniRect
       width: castScreenImg.implicitWidth
       height: 2
       anchors.verticalCenter: parent.verticalCenter
       color: "#75777f"

       MouseArea {
           anchors.fill: parent
           //鼠标悬浮时颜色变化
           hoverEnabled: true
           onEntered: {
               miniRect.color = "white"
           }
           onExited: {
               miniRect.color = "#75777f"
           }
           onClicked: {
               window.showMinimized()
           }
       }

    }
    //最大化
    Rectangle {
        id: maxRect
       //width: castScreenImg.implicitWidth
        width: 20
       height: width
       anchors.verticalCenter: parent.verticalCenter
       radius: 2
       border.width: 1
       border.color: "#75777f"
       color: "transparent"

       MouseArea {
           anchors.fill: parent
           //鼠标悬浮时颜色变化
           hoverEnabled: true
           onEntered: {
               maxRect.border.color = "white"
           }
           onExited: {
               maxRect.border.color = "#75777f"
           }
           onClicked: {
               //window.showMaximized()
               window.showFullScreen() //windows上使用该方法会出问题，好像是Qt的问题，我这里使用Ubuntu就不去深究了

               // //windows上的伪全屏临时解决方案，但好像会出问题
               // window.x = 0
               // window.y = 0
               // window.width = Screen.width - 1
               // window.height = Screen.height - 1

               //TODO 待解决的问题：最大化后无法还原（最小化再点开就还原了，暂时先这样吧）
           }
       }
    }

    //关闭
    Image {
        id: closeImg
        anchors.verticalCenter: parent.verticalCenter
        source: "qrc:/img/resources/title/close.png"

        //鼠标悬浮时图片颜色变化
        layer.enabled: false
        layer.effect: ColorOverlay {
            source: closeImg
            color: "white"
        }
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {
                closeImg.layer.enabled = true
            }
            onExited: {
                closeImg.layer.enabled = false
            }
            onClicked: {
                //window.close()
                Qt.quit()
            }
        }
    }
}
