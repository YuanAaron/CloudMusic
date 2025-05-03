import QtQuick 2.15
import "./src/commonUI"
import "./src/leftPage"
import "./src/rightPage"
import "./src/bottomPage"

YYYWindow {
    id: window

    LeftPage {
        id: leftRect
    }

    RightPage {
        id: rightRect
    }

    BottomPage {
        id: bottomRect
    }
}
