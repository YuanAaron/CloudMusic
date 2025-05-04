import QtQuick 2.15
import QtQuick.Controls 2.15 //Label
import QtGraphicalEffects 1.15 //鼠标悬浮时图片颜色变化
import "../title"

Rectangle {
    id: rightRect
    anchors.left: leftRect.right
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.bottom: bottomRect.top
    color: "#13131a"

    //TopTitle
    Item { //最好用Item而不用Rectangle
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        height: 60

        Row {
            id: othersRow
            spacing: 5
            anchors.verticalCenter: minmaxRow.verticalCenter
            anchors.right: minmaxRow.left
            anchors.rightMargin: 10

            //登录与会员
            Item {
                width: 140
                height: 30
                anchors.verticalCenter: parent.verticalCenter
                Row {
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 8

                    //圆形图标
                    Rectangle {
                        id: userIconRect
                        width: 25
                        height: width
                        anchors.verticalCenter: parent.verticalCenter
                        radius: width/2
                        color: "#2d2d37"
                        Image {
                            scale: 0.7
                            source: "qrc:/img/resources/title/user.png"
                            anchors.centerIn: parent
                        }
                    }

                    //“未登录”文本
                    Text {
                        id: loadStateText
                        text: "未登录"
                        color: "#75777f"
                        font.pixelSize: 14
                        font.family: "微软雅黑 Light"
                        anchors.verticalCenter: userIconRect.verticalCenter
                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true
                            onEntered: {
                                loadStateText.color = "white"
                            }
                            onExited: {
                                loadStateText.color = "#75777f"
                            }
                        }
                    }

                    //开通VIP图标
                    Item {
                        width: loadStateText.implicitWidth*1.2
                        height: userIconRect.height
                        anchors.verticalCenter: parent.verticalCenter
                        Rectangle {
                            id: vipRect
                            width: parent.width
                            height: 12
                            color: "#dadada"
                            radius: height/2
                            anchors.left: parent.left
                            anchors.verticalCenter: parent.verticalCenter
                            Label {
                                text: "VIP开通"
                                anchors.left: parent.left
                                anchors.leftMargin: parent.radius*2+5
                                color: "#f8f9f9"
                                font.pixelSize: parent.height/2+2
                                font.family: "微软雅黑 Light"
                                anchors.verticalCenter: parent.verticalCenter
                            }
                        }
                        Rectangle {
                            width: vipRect.height+4
                            height: width
                            radius: width/2
                            color: "#dadada"
                            border.width: 1
                            border.color: "#13121a"
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }
                }
            }

            //登录下拉
            Image {
                id: loginImg
                source: "qrc:/img/resources/title/arrow.png"
                anchors.verticalCenter: parent.verticalCenter
                rotation: -90

                //鼠标悬浮时图片颜色变化
                layer.enabled: false
                layer.effect: ColorOverlay {
                    source: loginImg
                    color: "white"
                }
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        parent.layer.enabled = true
                    }
                    onExited: {
                        parent.layer.enabled = false
                    }
                    onClicked: {
                        //...
                    }
                }
            }

            //消息中心
            Image {
                id: messageImg
                scale: 0.7
                source: "qrc:/img/resources/title/message.png"
                anchors.verticalCenter: parent.verticalCenter

                //鼠标悬浮时图片颜色变化
                layer.enabled: false
                layer.effect: ColorOverlay {
                    source: messageImg
                    color: "white"
                }
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        parent.layer.enabled = true
                    }
                    onExited: {
                        parent.layer.enabled = false
                    }
                    onClicked: {
                        //...
                    }
                }
            }
            //设置
            Image {
                id: settingImg
                scale: 0.7
                source: "qrc:/img/resources/title/setting.png"
                anchors.verticalCenter: parent.verticalCenter

                //鼠标悬浮时图片颜色变化
                layer.enabled: false
                layer.effect: ColorOverlay {
                    source: settingImg
                    color: "white"
                }
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        parent.layer.enabled = true
                    }
                    onExited: {
                        parent.layer.enabled = false
                    }
                    onClicked: {
                        //...
                    }
                }
            }

            //换肤
            Image {
                id: skinImg
                scale: 0.7
                source: "qrc:/img/resources/title/skin.png"
                anchors.verticalCenter: parent.verticalCenter

                //鼠标悬浮时图片颜色变化
                layer.enabled: false
                layer.effect: ColorOverlay {
                    source: skinImg
                    color: "white"
                }
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        parent.layer.enabled = true
                    }
                    onExited: {
                        parent.layer.enabled = false
                    }
                    onClicked: {
                        //...
                    }
                }
            }

            //分割线
            Rectangle {
                width: 1
                height: 24
                color: "#2d2d37"
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        MinAndMax {
            id: minmaxRow
        }
    }

}
